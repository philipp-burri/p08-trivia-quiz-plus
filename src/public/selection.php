<?php
include '../utils/db.php';

if (!isset($_SESSION)) {
    session_start();
}

$showCountdown = false;
if (isset($_SESSION['show_countdown']) && $_SESSION['show_countdown']) {
    $showCountdown = true;
    $_SESSION['show_countdown'] = false; // Reset für nächste Fragen
}

$mode = $_SESSION['selected_mode'] ?? 'easy';
?>

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TriviaQuiz++ - Auswahl</title>
    <link rel="stylesheet" href="assets/css/selection.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link href="https://fonts.googleapis.com/css2?family=Bowlby+One+SC&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="icon" href="/assets/img/faviconQ.png" type="image/x-icon">    
    <script src="../assets/js/main.js"></script>
</head>
<body>
  <?php include '../utils/header.php'; ?>
    <div class="selection-container">
        <h1 class="title" id="selectionTitle"></h1>
        <div class="card-container" id="categories">
            <div class="card" data-category="football">
                <div class="card-inner">
                    <i class="fas fa-futbol"></i>
                    <p>Fussball</p>
                </div>
            </div>
            <div class="card" data-category="history">
                <div class="card-inner">
                    <i class="fas fa-book"></i>
                    <p>Geschichte</p>
                </div>
            </div>
            <div class="card" data-category="animals">
                <div class="card-inner">
                    <i class="fas fa-paw"></i>
                    <p>Tiere</p>
                </div>
            </div>
            <div class="card" data-category="geography">
                <div class="card-inner">
                    <i class="fas fa-globe"></i>
                    <p>Geographie</p>
                </div>
            </div>
        </div>
        
        <div class="card-container" id="difficulties" style="display: none;">
            <div class="card" data-difficulty="easy">
                <div class="card-inner">
                    <p>Einfach</p>
                </div>
            </div>
            <div class="card" data-difficulty="hard">
                <div class="card-inner">
                    <p>Schwer</p>
                </div>
            </div>
        </div>
        
        <div class="card-container" id="modes" style="display: none;">
    <div class="card" data-mode="standard">
        <div class="card-inner">
            <p class="mode-title">Standard</p>
            <p class="mode-description">10 Fragen ohne Zeitdruck</p>
        </div>
    </div>
    <div class="card" data-mode="rapid">
        <div class="card-inner">
            <p class="mode-title">Rapid</p>
            <p class="mode-description">Beantworte 10 Fragen mit einem Timer</p>
        </div>
    </div>
    <div class="card" data-mode="elimination">
        <div class="card-inner">
            <p class="mode-title">Elimination</p>
            <p class="mode-description">Bei falscher Antwort scheidest du aus</p>
        </div>
    </div>
</div>
    </div>
    <form id="quizForm" action="questions.php" method="post">
    <input type="hidden" name="category" id="categoryInput">
    <input type="hidden" name="difficulty" id="difficultyInput">
    <input type="hidden" name="mode" id="modeInput">
    </form>

       <script>
    document.addEventListener('DOMContentLoaded', function() {
        var showCountdown = <?php echo json_encode($showCountdown); ?>;
        
        if (showCountdown) {
            var counter = 3;
            var countdownContainer = document.getElementById('countdown-container');
            var quizContent = document.getElementById('quiz-content');
            
            var timer = setInterval(function() {
                if (counter > 0) {
                    countdownContainer.innerHTML = '<div id="countdown">' + counter + '</div>';
                } else if (counter === 0) {
                    countdownContainer.innerHTML = '<div id="countdown">GO</div>';
                } else {
                    clearInterval(timer);
                    countdownContainer.style.display = 'none';
                    quizContent.style.display = 'block';
                }
                
                setTimeout(() => {
                    var countdown = document.getElementById('countdown');
                    if (countdown) {
                        countdown.style.fontSize = '0vw';
                        countdown.style.opacity = 0;
                    }
                }, 20);
                
                counter--;
            }, 1000);
        } else {
            document.getElementById('quiz-content').style.display = 'block';
        }
    });
    </script>
    
</body>
</html>