// dataTypes.js - Showing primitive and non-primitive types
let s = "Hello";                     // string
let n = 123;                         // number
let f = 12.34;                       // number (float)
let b = true;                        // boolean
let empty = null;                    // null (explicitly empty)
let notAssigned;                     // undefined
let sym = Symbol('id');              // symbol (unique)
let big = 12345678901234567890n;     // BigInt

// object (non-primitive)
let obj = { id: 1, name: "Akash" };
let arr = [1,2,3];

console.log(typeof s, typeof n, typeof b, typeof empty, typeof notAssigned);
console.log(typeof obj, Array.isArray(arr));
