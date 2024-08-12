<script>

let currentQuestionNr = <?php echo (int)$currentQuestion; ?>;
let timeLeft = 10;
let timer;
let questions = 10;
var startTime; // Variable für die Startzeit
var totalTime; // Variable für die gesamte Zeit
var endTime;

const timerEl = document.querySelector('.timer');

const timerRect = document.querySelector('.timer-ring__circle');
const progressRect = document.querySelector('.progress-ring__circle');
const timerCircumference = 2584; // (796 + 796 + 496 + 496)
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
    const offset = timerCircumference * (1 - percent / 100);
    timerRect.style.strokeDashoffset = offset;
}

function countUp() {
    window.location.href = "questions.php?count_up=1";
}

function startTimer() {
    if (currentQuestionNr <= 9) {
        const startTime = Date.now();
        const duration = 10000; // 10 Sekunden in Millisekunden

        function updateTimer() {
            const elapsedTime = Date.now() - startTime;
            const remainingTime = Math.max(0, duration - elapsedTime);
            timeLeft = remainingTime / 1000;

            timerEl.textContent = Math.ceil(timeLeft);
            setTimer((1 - timeLeft / 10) * 100);

            if (timeLeft > 0) {
                requestAnimationFrame(updateTimer);
            } else {
                countUp();
            }
        }

        requestAnimationFrame(updateTimer);
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
        console.log(`Das Quiz hat ${totalTime} Sekunden gedauert.`);

        </script>';
} 

?>