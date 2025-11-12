// callbackHell.js - example of nested callbacks (for demonstration only)
function step1(cb){ setTimeout(()=> cb('step1'), 100); }
function step2(prev, cb){ setTimeout(()=> cb(prev + ' -> step2'), 100); }
function step3(prev, cb){ setTimeout(()=> cb(prev + ' -> step3'), 100); }

step1(function(r1){
    step2(r1, function(r2){
        step3(r2, function(r3){
            console.log('done', r3);
        });
    });
});
