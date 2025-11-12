// jsonExamples.js - JSON stringify and parse
const obj = { name: 'Akash', age: 19 };
const json = JSON.stringify(obj);
console.log('json', json);
const parsed = JSON.parse(json);
console.log('parsed', parsed);
