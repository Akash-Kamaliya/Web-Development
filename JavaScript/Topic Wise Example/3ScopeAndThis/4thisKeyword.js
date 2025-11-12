// thisKeyword.js - this behaviour in different contexts
const obj = {
    num: 5,
    getNum: function() { console.log('method this.num=', this.num); }
};
obj.getNum();

const arrowObj = {
    num: 7,
    getNum: () => { console.log('arrow this.num=', this.num); } // lexical this -> window/global
};
arrowObj.getNum();

// In constructor functions / classes 'this' is the instance
function Person(name) { this.name = name; }
const p = new Person('Akash');
console.log('person name', p.name);
