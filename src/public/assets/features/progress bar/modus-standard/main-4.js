const questions = [
    {
        question: "Was ist die Hauptstadt von Deutschland?",
        answers: ["Berlin", "Hamburg", "München", "Frankfurt"],
        correct: 0
    },
    {
        question: "Welcher Planet ist der Sonne am nächsten?",
        answers: ["Venus", "Mars", "Merkur", "Jupiter"],
        correct: 2
    },
    {
        question: "Wer schrieb 'Romeo und Julia'?",
        answers: ["Charles Dickens", "William Shakespeare", "Jane Austen", "Mark Twain"],
        correct: 1
    },
    {
        question: "Welches Element hat das chemische Symbol 'O'?",
        answers: ["Gold", "Silber", "Eisen", "Sauerstoff"],
        correct: 3
    },
    {
        question: "In welchem Jahr endete der Zweite Weltkrieg?",
        answers: ["1943", "1944", "1945", "1946"],
        correct: 2
    }
];

let currentQuestion = 0;
const questionEl = document.getElementById('question');
const answersEl = document.getElementById('answers');
const steps = document.querySelectorAll('.step');
const bars = document.querySelectorAll('.bar');

function loadQuestion() {
    const question = questions[currentQuestion];
    questionEl.textContent = question.question;
    answersEl.innerHTML = '';
    question.answers.forEach((answer, index) => {
        const button = document.createElement('button');
        button.textContent = answer;
        button.classList.add('answer-btn');
        button.addEventListener('click', () => selectAnswer(index));
        answersEl.appendChild(button);
    });
    updateProgressBar();
}

function selectAnswer(index) {
    nextQuestion();
}

function nextQuestion() {
    if (currentQuestion < questions.length) {
        steps[currentQuestion].classList.remove('active');
        if (currentQuestion < bars.length) {
            bars[currentQuestion].classList.remove('active');
        }
        currentQuestion++;
        if (currentQuestion < questions.length) {
            steps[currentQuestion].classList.add('active');
            if (currentQuestion - 1 < bars.length) {
                bars[currentQuestion - 1].classList.add('active');
            }
            loadQuestion();
        } else {
            questionEl.textContent = "Quiz beendet!";
            answersEl.innerHTML = '';
            updateProgressBar(); // Setzt den Fortschrittsbalken auf 100%
        }
    }
}

function updateProgressBar() {
    steps.forEach((step, index) => {
        if (index <= currentQuestion) {
            step.classList.add('active');
        } else {
            step.classList.remove('active');
        }
    });
    bars.forEach((bar, index) => {
        if (index < currentQuestion) {
            bar.classList.add('active');
        } else {
            bar.classList.remove('active');
        }
    });
}

loadQuestion();
