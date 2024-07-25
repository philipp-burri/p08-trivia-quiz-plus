<?php
// Stellen Sie sicher, dass die POST-Daten empfangen wurden


    // Hier würden Sie später Ihre Datenbankverbindung und Abfrage einfügen
    // Beispiel:
    // $question = getQuestionFromDatabase($category, $difficulty);
    // $answers = getAnswersFromDatabase($question_id);

    // Platzhalter für Frage und Antworten


    // HTML-Template
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="style-4.css">
    <link href="https://fonts.googleapis.com/css2?family=Bowlby+One+SC&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>



    <body>
    <?php include '../utils/header.php'; ?>
    
    <div class="container">
        <div class="timer-container">
            <svg class="timer-ring" width="100%" height="100%" viewBox="0 0 800 800">
                <defs>
                    <linearGradient id="timerGradient" x1="0%" y1="0%" x2="100%" y2="0%">
                        <stop offset="0%" stop-color="#8A2BE2" />
                        <stop offset="100%" stop-color="#FFA500" />
                    </linearGradient>
                </defs>
                <rect class="timer-ring__circle" x="10" y="10" width="780" height="780" rx="40" ry="40" stroke="url(#timerGradient)" stroke-width="8" fill="transparent"/>
                <rect class="progress-ring__circle" x="26" y="26" width="748" height="748" rx="32" ry="32" stroke="#5a189a" stroke-width="18" fill="transparent"/>
            </svg>
            <div class="timer">10</div>
            <div class="quiz-container">
                <div id="question"></div>
                <div id="answers"></div>
            </div>
        </div>
    </div>
        <script src="main-4.js"></script>
    </body>
    </html>
