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
const progressRect = document.querySelector('.progress-ring__circle');
const progressCircumference = 2384;

progressRect.style.strokeDasharray = `${progressCircumference} ${progressCircumference}`;
progressRect.style.strokeDashoffset = progressCircumference;

function setProgress(percent) {
    const offset = progressCircumference - percent / 100 * progressCircumference;
    progressRect.style.strokeDashoffset = offset;
}

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
    setProgress((currentQuestion / questions.length) * 100);
}

function selectAnswer(index) {
    if (index === questions[currentQuestion].correct) {
        console.log("Richtig!");
    } else {
        console.log("Falsch!");
    }
    nextQuestion();
}

function nextQuestion() {
    currentQuestion++;
    if (currentQuestion < questions.length) {
        loadQuestion();
    } else {
        questionEl.textContent = "Quiz beendet!";
        answersEl.innerHTML = '';
        setProgress(100); // Setzt den Fortschrittsbalken auf 100%
    }
}

loadQuestion();