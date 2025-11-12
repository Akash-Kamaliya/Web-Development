// arrayMethods.js - map, filter, reduce, find, forEach examples
const nums = [1,2,3,4,5];
console.log('map *2', nums.map(n => n*2));
console.log('filter even', nums.filter(n => n%2===0));
console.log('reduce sum', nums.reduce((s,n)=>s+n,0));
console.log('find >3', nums.find(n=> n>3));
nums.forEach(n=> console.log('num', n));
