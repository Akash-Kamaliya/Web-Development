// fetchApi.js - example using fetch (works in browser / node v18+)
// Note: In Node <18 you need node-fetch package
async function getUsers() {
    try {
        const res = await fetch('https://jsonplaceholder.typicode.com/users');
        const users = await res.json();
        console.log('users count', users.length);
        console.log('first user', users[0]);
    } catch (err) {
        console.error('fetch error', err.message);
    }
}
// Commented out to avoid network call in restricted environments; uncomment to use.
// getUsers();
