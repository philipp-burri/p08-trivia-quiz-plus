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

const timerRect = document.querySelector('.timer-ring__circle');
const progressRect = document.querySelector('.progress-ring__circle');
const timerCircumference = 2080; // 2/3 von 3120
const progressCircumference = 1995; // 2/3 von 2992

timerRect.style.strokeDasharray = `${timerCircumference} ${timerCircumference}`;
timerRect.style.strokeDashoffset = 0;
progressRect.style.strokeDasharray = `${progressCircumference} ${progressCircumference}`;
progressRect.style.strokeDashoffset = progressCircumference;

function setProgress(percent) {
    const offset = progressCircumference - percent / 100 * progressCircumference;
    progressRect.style.strokeDashoffset = offset;
}

function setTimer(percent) {
    const offset = percent / 100 * timerCircumference;
    timerRect.style.strokeDashoffset = offset;
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