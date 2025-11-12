// lexicalScope.js - closure example
function outer(name) {
    let greeting = 'Hi';
    return function() {
        console.log(greeting + ' ' + name);
    };
}
const say = outer('Akash');
say(); // closure remembers greeting & name
