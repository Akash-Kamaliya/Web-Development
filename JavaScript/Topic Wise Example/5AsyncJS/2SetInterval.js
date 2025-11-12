// setInterval.js - interval with clear example
let c = 0;
const id = setInterval(()=> {
    c++;
    console.log('tick', c);
    if (c === 3) clearInterval(id);
}, 300);
