// asyncAwait.js - nicer syntax over promises
function wait(ms){ return new Promise(res => setTimeout(res, ms)); }

async function run() {
    console.log('before');
    await wait(200);
    console.log('after 200ms');
}
run();
