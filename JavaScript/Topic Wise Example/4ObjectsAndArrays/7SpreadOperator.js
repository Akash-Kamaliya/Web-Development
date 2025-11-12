// spreadOperator.js - shallow copy and merging
const a = [1,2];
const b = [...a,3,4];
console.log('b', b);

const obj = {x:1};
const obj2 = {...obj, y:2};
console.log('obj2', obj2);
