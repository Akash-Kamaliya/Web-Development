const _ = require("underscore");

const numbers = [5, 2, 9, 2, 8, 5, 1, 9];

const unique = _.uniq(numbers);

const sorted = _.sortBy(unique);

console.log("Original Array:", numbers);
console.log("Unique Values:", unique);
console.log("Sorted Result:", sorted);
