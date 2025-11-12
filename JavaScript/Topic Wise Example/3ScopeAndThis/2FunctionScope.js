// functionScope.js - var vs let in function scope
function test() {
    var x = 1;
    if (true) {
        var x = 2; // same variable (function scope)
        let y = 3; // block scope
    }
    console.log('x after block (var)=', x); // 2
}
test();
