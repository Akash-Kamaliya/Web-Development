let gameSeq = [];
let userSeq = [];

let buttons = ["red", "yellow", "green", "purple"];

let started = false;
let level = 0;

let h2 = document.querySelector("h2");

document.addEventListener("keypress", function () {
    if (!started) {
        started = true;
        levelUp();
    }
});

function flashButton(btn) {
    btn.classList.add("flash");
    setTimeout(() => {
        btn.classList.remove("flash");
    }, 250);
}

function levelUp() {
    userSeq = [];
    level++;
    h2.innerText = `Level ${level}`;

    let randIdx = Math.floor(Math.random() * 4);
    let randColor = buttons[randIdx];
    let randBtn = document.getElementById(randColor);

    gameSeq.push(randColor);

    flashButton(randBtn);
}

function checkAnswer(index) {
    if (userSeq[index] === gameSeq[index]) {
        if (userSeq.length === gameSeq.length) {
            setTimeout(levelUp, 1000);
        }
    } else {
        h2.innerText = "Game Over! Press any key to Restart.";
        resetGame();
    }
}

let allBtns = document.querySelectorAll(".btn");
allBtns.forEach(btn => {
    btn.addEventListener("click", function () {
        let color = btn.id;
        userSeq.push(color);

        flashButton(btn);
        checkAnswer(userSeq.length - 1);
    });
});

function resetGame() {
    started = false;
    gameSeq = [];
    userSeq = [];
    level = 0;
}
