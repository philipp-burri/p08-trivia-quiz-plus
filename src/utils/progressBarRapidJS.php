<script>

let currentQuestionNr = <?php echo (int)$currentQuestion; ?>;
let timeLeft = 10;
let timer;

const timerEl = document.querySelector('.timer');

const timerRect = document.querySelector('.timer-ring__circle');
const progressRect = document.querySelector('.progress-ring__circle');
const timerCircumference = 2352; // Neuer Umfang für das äußere Rechteck (2 * (788 + 388))
const progressCircumference = 2224; // Neuer Umfang für das innere Rechteck (2 * (756 + 356))

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
        button.classList.add('answer-btn');
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
        setProgress(100); // Setzt den Fortschrittsbalken auf 100%
    }
}

loadQuestion();

</script>