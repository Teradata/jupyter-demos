import {Environments} from './environments';

const CSAE_ENV_PASSWORD = process.env.CSAE_ENV_PASSWORD || 'asdfasdf';
const CSAE_WORKERS_COUNT = parseInt(process.env.CSAE_WORKERS_COUNT || '1');
const CSAE_PARALLEL_TESTS_COUNT = parseInt(process.env.CSAE_PARALLEL_TESTS_COUNT || '1');
const ENV_PREFIX = process.env.GITHUB_RUN_ID? `${process.env.GITHUB_RUN_ID}-${process.env.CSAE_CI_JOB_IDX}`:'env';

const envs:Promise<any>[] = [];

console.log('CSAE_WORKERS_COUNT:', CSAE_WORKERS_COUNT);
console.log('CSAE_PARALLEL_TESTS_COUNT:', CSAE_PARALLEL_TESTS_COUNT);

console.log(`Need ${Math.floor(CSAE_WORKERS_COUNT/CSAE_PARALLEL_TESTS_COUNT)} environments`);

for (let i = 0; i < Math.floor(CSAE_WORKERS_COUNT/CSAE_PARALLEL_TESTS_COUNT); i++) {
    const env = new Environments(`jupyter-demos-${ENV_PREFIX}-${i}`, 'us-west', CSAE_ENV_PASSWORD)
    envs.push(env.create());
}

console.log(`Creating ${envs.length} environments`);
Promise.all(envs).then(() => {
    console.log('Environments created');
})
