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
let timeLeft = 10;
let timer;

const questionEl = document.getElementById('question');
const answersEl = document.getElementById('answers');
const timerEl = document.querySelector('.timer');

const progressCircle = document.querySelector('.progress-ring__circle');
const timerCircle = document.querySelector('.timer-ring__circle');
const timerRadius = timerCircle.r.baseVal.value;
const progressRadius = progressCircle.r.baseVal.value;
const timerCircumference = timerRadius * 2 * Math.PI;
const progressCircumference = progressRadius * 2 * Math.PI;

timerCircle.style.strokeDasharray = `${timerCircumference} ${timerCircumference}`;
timerCircle.style.strokeDashoffset = 0;
progressCircle.style.strokeDasharray = `${progressCircumference} ${progressCircumference}`;
progressCircle.style.strokeDashoffset = progressCircumference;

function setProgress(percent) {
    const offset = progressCircumference - percent / 100 * progressCircumference;
    progressCircle.style.strokeDashoffset = offset;
}

function setTimer(percent) {
    const offset = percent / 100 * timerCircumference;
    timerCircle.style.strokeDashoffset = offset;
}

function loadQuestion() {
    const question = questions[currentQuestion];
    questionEl.textContent = question.question;
    answersEl.innerHTML = '';
    question.answers.forEach((answer, index) => {
        const button = document.createElement('button');
        button.textContent = answer;
        button.addEventListener('click', () => selectAnswer(index));
        answersEl.appendChild(button);
    });
    timeLeft = 10;
    setProgress((currentQuestion / questions.length) * 100);
    setTimer(0);
    startTimer();
}

function startTimer() {
    timer = setInterval(() => {
        timeLeft--;
        timerEl.textContent = timeLeft;
        setTimer((10 - timeLeft) * 10);
        if (timeLeft <= 0) {
            clearInterval(timer);
            nextQuestion();
        }
    }, 1000);
}

function selectAnswer(index) {
    clearInterval(timer);
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
        timerEl.style.display = 'none';
    }
}

loadQuestion();