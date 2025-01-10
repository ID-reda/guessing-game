// script.js

function startGame() {
    let number = Math.floor(Math.random() * 10) + 1;  // Nombre aléatoire entre 1 et 10
    let guess = prompt("Guess a number between 1 and 10:");

    if (guess == number) {
        alert("🎉 Bravo ! Tu as deviné le bon nombre !");
    } else {
        alert("❌ Mauvaise réponse ! Le nombre était " + number);
    }
}
