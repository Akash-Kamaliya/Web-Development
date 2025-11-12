// errorHandling.js - try/catch and throwing errors
try {
    JSON.parse('invalid json');
} catch (err) {
    console.error('parse failed:', err.message);
}

function validate(n) {
    if (typeof n !== 'number') throw new TypeError('Expected number');
    return n;
}
try { validate('a'); } catch(e) { console.log('caught', e.message); }
