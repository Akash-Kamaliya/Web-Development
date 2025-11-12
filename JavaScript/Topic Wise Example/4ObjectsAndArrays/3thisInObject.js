// thisInObject.js - method vs extracted function
const o = { a: 10, getA() { return this.a; } };
console.log('method call', o.getA());
const extracted = o.getA;
console.log('extracted call', extracted()); // this lost -> undefined in strict mode
