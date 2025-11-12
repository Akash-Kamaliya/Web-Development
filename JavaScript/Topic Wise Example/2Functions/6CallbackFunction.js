// callbackFunction.js - simple callback example
function fetchData(callback) {
    setTimeout(() => {
        const data = { id: 1, name: 'Akash' };
        callback(data);
    }, 300);
}

fetchData(function(d) {
    console.log('Got data via callback:', d);
});
