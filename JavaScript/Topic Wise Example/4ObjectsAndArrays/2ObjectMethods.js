// objectMethods.js - Object methods and 'this'
const counter = {
    value: 0,
    inc() { this.value++; },
    dec() { this.value--; }
};
counter.inc(); counter.inc(); counter.dec();
console.log('counter', counter.value);
