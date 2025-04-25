import {Environments} from './environments';
import {TeradataConnection} from 'teradatasql';

const CSAE_ENV_PASSWORD = process.env.CSAE_ENV_PASSWORD || 'asdfasdf';
const CSAE_WORKERS_COUNT = parseInt(process.env.CSAE_WORKERS_COUNT || '1');
const CSAE_PARALLEL_TESTS_COUNT = parseInt(process.env.CSAE_PARALLEL_TESTS_COUNT || '1');
const ENV_PREFIX = process.env.GITHUB_RUN_ID? `${process.env.GITHUB_RUN_ID}-${process.env.CSAE_CI_JOB_IDX}`:'env';

const envs:Promise<any>[] = [];

console.log('CSAE_WORKERS_COUNT:', CSAE_WORKERS_COUNT);
console.log('CSAE_PARALLEL_TESTS_COUNT:', CSAE_PARALLEL_TESTS_COUNT);

console.log(`${Math.floor(CSAE_WORKERS_COUNT/CSAE_PARALLEL_TESTS_COUNT)} environments`);

for (let i = 0; i < Math.floor(CSAE_WORKERS_COUNT/CSAE_PARALLEL_TESTS_COUNT); i++) {
    const env = new Environments(`jupyter-demos-${ENV_PREFIX}-${i}`, 'us-central', CSAE_ENV_PASSWORD)

    await env.loadEnvDetails();
    //Before deleting the environment, get some debug information
    const connection = new TeradataConnection();
    connection.connect({
        host: env.envDetails.dnsName,
        user: 'demo_user',
        password: env.password
    })
    try {
        const cur = connection.cursor();
        try {
            cur.execute('select username, count(*) from dbc.sessioninfo group by 1 order by 1');
            const rows = cur.fetchall();
            for(const row of rows) {
                console.log(`DEBUG: DB Sessions for username ${row[0]}: ${row[1]}`);
            } 
        }finally{
            cur.close();
        }
    }finally {
        connection.close();
    }

    envs.push(env.delete());
}

console.log(`Deleting ${envs.length} environments`);
Promise.all(envs).then(() => {
    console.log('Environments Deleted');
})