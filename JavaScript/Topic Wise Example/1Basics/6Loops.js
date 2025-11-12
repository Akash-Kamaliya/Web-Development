// loops.js - for, while, do-while, for-of, for-in
for (let i = 0; i < 3; i++) {
    console.log('for i=', i);
}

let i = 0;
while (i < 2) {
    console.log('while i=', i);
    i++;
}

let j = 0;
do {
    console.log('do-while j=', j);
    j++;
} while (j < 1);

let arr = ['a','b','c'];
for (let val of arr) console.log('for-of', val);

let obj = {x:1, y:2};
for (let key in obj) console.log('for-in', key, obj[key]);
