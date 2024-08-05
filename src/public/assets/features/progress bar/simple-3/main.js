
let currentQuestion = 1;
const totalQuestions = 5; // Gesamtanzahl der Fragen
const progressBar = document.getElementById('progress-bar');
const questionElement = document.getElementById('question');

const questions = [
    "Frage 1: Was ist die Hauptstadt von Frankreich?",
    "Frage 2: Was ist 2 + 2?",
    "Frage 3: Wie heißt der höchste Berg der Welt?",
    "Frage 4: Welches Element hat das chemische Symbol O?",
    "Frage 5: Wie viele Kontinente gibt es auf der Erde?"
];

function nextQuestion() {
    if (currentQuestion < totalQuestions) {
        currentQuestion++;
        updateProgressBar();
        updateQuestion();
    }
}

function updateProgressBar() {
    const progress = (currentQuestion / totalQuestions) * 100;
    progressBar.style.width = progress + '%';
}

function updateQuestion() {
    questionElement.textContent = questions[currentQuestion - 1];
}

updateProgressBar();
updateQuestion();
