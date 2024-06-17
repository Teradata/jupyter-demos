import {Environments} from './environments';

const CSAE_ENV_PASSWORD = process.env.CSAE_ENV_PASSWORD || 'asdfasdf';
const CSAE_WORKERS_COUNT = parseInt(process.env.CSAE_WORKERS_COUNT || '1');
const CSAE_PARALLEL_TESTS_COUNT = parseInt(process.env.CSAE_PARALLEL_TESTS_COUNT || '1');
const envs:Promise<any>[] = [];

for (let i = 0; i < 1; i++) {
    for (let i = 0; i < Math.floor(CSAE_WORKERS_COUNT/CSAE_PARALLEL_TESTS_COUNT); i++) {
        const env = new Environments(`env${i}`, 'us-central', CSAE_ENV_PASSWORD)
        envs.push(env.delete());
    }
}
console.log(`Deleting ${envs.length} environments`);
Promise.all(envs).then(() => {
    console.log('Environments created');
})