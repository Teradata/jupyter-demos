import axios from 'axios';

const API_KEY = process.env.CSAE_CLEARSCAPE_API_KEY;
const url = process.env.TEST_ENV === 'CI' 
    ? 'https://api.ci.clearscape.teradata.com/environments' 
    : 'https://api.clearscape.teradata.com/environments';
const DEBUG = process.argv.includes('debug');

async function listAllEnvironments() {
    try {
        const response = await axios.get(url, {
            headers: {
                'Authorization': `Bearer ${API_KEY}`
            }
        });
        return response.data;
    } catch (error) {
        console.error('Error listing environments:', error);
        return [];
    }
}

async function deleteEnvironment(envName: string) {
    try {
        await axios.delete(`${url}/${envName}`, {
            headers: {
                'Authorization': `Bearer ${API_KEY}`,
                'Content-Type': 'application/json'
            }
        });
        console.log(`✓ Deleted environment: ${envName}`);
    } catch (error) {
        console.error(`✗ Failed to delete environment ${envName}:`, error);
    }
}

async function cleanup() {
    console.log('Fetching all environments...');
    const environments = await listAllEnvironments();
    
    if (!environments || environments.length === 0) {
        console.log('No environments found.');
        return;
    }

    console.log(`Found ${environments.length} environment(s):`);
    
    if (DEBUG) {
        environments.forEach((env: any) => {
            console.log(`  - ${env.name} (state: ${env.state}, region: ${env.region}, created: ${env.created})`);
        });
    }

    console.log('\nDeleting all environments...');
    
    const deletePromises = environments.map((env: any) => deleteEnvironment(env.name));
    await Promise.all(deletePromises);
    
    console.log('\nCleanup complete!');
}

cleanup();
