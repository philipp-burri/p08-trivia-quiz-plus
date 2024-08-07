<script>

let currentQuestionNr = <?php echo (int)$currentQuestion; ?>;
let timeLeft = 10;
let timer;
let questions = 10;

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

function countUp() {
    window.location.href = "questions.php?count_up=1";
}

function startTimer() {
    if (currentQuestionNr <= 9) {
    
    timer = setInterval(() => {
        timeLeft--;
        timerEl.textContent = timeLeft;
        setTimer((10 - timeLeft) * 10);
        if (timeLeft <= 0) {
            clearInterval(timer);
            countUp();
        }
    }, 1000);
}
}

function hideTimer() {
            var element = document.getElementById('timer-ring__circle');
            element.classList.add('hidden');
        }

</script>

<?php

if (isset($_SESSION['questionIndex'])) {
    echo '<script>
            setTimer(0);
            startTimer();
            setProgress((currentQuestionNr / questions) * 100);
        </script>';
} 

if (($_SESSION['questionIndex']) >= 10) {
    echo '<script>
        hideTimer();
        </script>';
} 
?>