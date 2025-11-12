// promises.js - creating and chaining promises
function wait(ms){ return new Promise(res => setTimeout(res, ms)); }

wait(200).then(()=> {
    console.log('after 200ms');
    return wait(100);
}).then(()=> console.log('after total 300ms'));
