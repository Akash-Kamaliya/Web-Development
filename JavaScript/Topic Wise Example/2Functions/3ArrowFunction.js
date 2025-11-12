// arrowFunction.js - concise arrow functions
const square = n => n * n;           // implicit return
const pow = (x, y) => { return x ** y; }; // block body

console.log('square(5)=', square(5));
console.log('pow(2,3)=', pow(2,3));
