import axios from 'axios';

const API_KEY = process.env.CSAE_CLEARSCAPE_API_KEY;
const url = 'https://api.clearscape.teradata.com/environments';
const CSAE_ENV_PASSWORD = process.env.CSAE_ENV_PASSWORD || 'asdfasdf';
const ENV_PREFIX = process.env.GITHUB_RUN_ID? `${process.env.GITHUB_RUN_ID}-${process.env.CSAE_CI_JOB_IDX}`:'env';
export class Environments {
    public readonly envName: string;
    public readonly region: string;
    public readonly password: string;

    public envDetails: any;

    constructor(evnName: string, region: string, password: string) {
        this.envName = evnName;
        this.region = region;
        this.password = password;
    }
    public list() {
        return axios.get(url,{
            headers: {
                'Authorization': `Bearer ${API_KEY}`
            }
        }).then((response) => response.data).catch((error) => console.error(error));
    }

    public async create() {
        const list = await this.list();
        const envDetails = list.find((env: any) => env.name === this.envName);
        if(envDetails) {
            this.envDetails = envDetails;
            if (envDetails.state === 'STOPPED') {
                await this.start();
            }
        } else {
            this.envDetails = await axios.post(url, {
                name: this.envName,
                region: this.region,
                password: this.password
            }, {
                headers: {
                    'Authorization': `Bearer ${API_KEY}`,
                    'Content-Type': 'application/json'
                }
            }).then((response) => {
                return response.data;
            }
            ).catch((error) => {
                console.error(error)
            });
        }
    }
    public start() {
        return axios.patch(`${url}/${this.envName}`, { operation: 'start' }, {
            headers: {
                'Authorization': `Bearer ${API_KEY}`,
                'Content-Type': 'application/json'
            }
        })
    }

    public async delete() {
        this.envDetails = await axios.delete(`${url}/${this.envName}`, {
            headers: {
                'Authorization': `Bearer ${API_KEY}`,
                'Content-Type': 'application/json'
            }
        }).then((response) => {
            return response.data;
        }
        ).catch((error) => {
            console.error(error)
        });
    }

    public getJuypterUrl(notebookUrl:string) {
       const rawUrl = this.envDetails.services.filter((service: any) => service.name === 'Jupyterlab')[0].url.split('/Demo.index?token=');
       const url = rawUrl[0];
       const token = rawUrl[1];
       return `${url}/${notebookUrl}?token=${token}`;
    }
}

export class EnvPool {
    private envPool: Environments[]=[];
    constructor(private maxEnv: number) {
       for (let i = 0; i < maxEnv; i++) {
            this.envPool.push(new Environments(`jupyter-demos-${ENV_PREFIX}-${i}`, 'us-central', CSAE_ENV_PASSWORD));
        }
    }

    public async getEnv(index:number): Promise<Environments>{
        const rrIndex = (index) % this.maxEnv;
        const env = this.envPool[rrIndex];
        await env.create();
        return env;
    }

}