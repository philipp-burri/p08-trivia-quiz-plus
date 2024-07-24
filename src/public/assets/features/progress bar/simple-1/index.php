<?php

include dirname(__DIR__) . '/utils/db.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TriviaQuiz++</title>
    <link rel="stylesheet" href="style.css" />
</head>

<body>


    <div class="quiz-container">
        <div class="progress-bar-container">
            <div class="progress-bar" id="progress-bar"></div>
        </div>
        <div class="question-container">
            <p id="question">Frage 1: Was ist die Hauptstadt von Frankreich?</p>
            <!-- Hier kommen die Quizfragen und Antworten -->
        </div>
        <button onclick="nextQuestion()">Nächste Frage</button>
    </div>


    <script src="main.js"></script>
</body>
</html>