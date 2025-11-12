// parametersAndReturn.js - rest params and returning multiple values via object
function sumAll(...nums) {
    return nums.reduce((s, v) => s + v, 0);
}
const result = sumAll(1,2,3,4);
console.log('sumAll=', result);

function stats(arr) {
    return { min: Math.min(...arr), max: Math.max(...arr), avg: arr.reduce((a,b)=>a+b,0)/arr.length };
}
console.log('stats:', stats([2,4,6]));
