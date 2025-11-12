// tryCatch.js - error handling with async/await
async function mayFail() {
    throw new Error('Something went wrong');
}

(async ()=> {
    try {
        await mayFail();
    } catch (err) {
        console.error('Caught error:', err.message);
    }
})();
