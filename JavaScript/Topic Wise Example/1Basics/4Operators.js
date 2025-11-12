// operators.js - arithmetic, assignment, comparison, logical, ternary
let a = 10, b = 3;
console.log('a+b=', a+b, 'a-b=', a-b, 'a*b=', a*b);

// comparison and strict equality
console.log('5' == 5, "'5' == 5 (loose equality)");
console.log('5' === 5, "'5' === 5 (strict equality)");

// logical
console.log('a>5 && b<5 ->', a>5 && b<5);
console.log('a>20 || b<5 ->', a>20 || b<5);

// ternary
let bigger = a > b ? 'a' : 'b';
console.log('bigger:', bigger);
