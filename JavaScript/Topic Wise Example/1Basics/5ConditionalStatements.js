// conditionalStatements.js - if/else and switch examples
let score = 78;
if (score >= 90) {
    console.log('A+');
} else if (score >= 75) {
    console.log('A');
} else if (score >= 60) {
    console.log('B');
} else {
    console.log('C or below');
}

// switch use-case
let day = 4;
switch (day) {
    case 1:
    case 2:
        console.log('Early week'); break;
    case 3:
    case 4:
        console.log('Mid week'); break;
    default:
        console.log('Other'); break;
}
