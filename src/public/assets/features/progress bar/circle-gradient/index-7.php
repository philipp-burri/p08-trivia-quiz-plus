<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz</title>
    <link rel="stylesheet" href="style-6.css">
</head>
<body>
    <div class="quiz-container">
        <div class="timer-container">
            <svg class="timer-ring" width="150" height="150">
                <defs>
                    <linearGradient id="timerGradient" x1="0%" y1="0%" x2="100%" y2="0%">
                        <stop offset="0%" stop-color="#8A2BE2" />  <!-- Violett -->
                        <stop offset="100%" stop-color="#FFA500" />  <!-- Orange -->
                    </linearGradient>
                </defs>
                <circle class="timer-ring__circle" stroke="url(#timerGradient)" stroke-width="8" fill="transparent" r="67" cx="75" cy="75"/>
                <circle class="progress-ring__circle" stroke="blue" stroke-width="12" fill="transparent" r="59" cx="75" cy="75"/>
            </svg>
            <div class="timer">10</div>
        </div>
        <div id="question"></div>
        <div id="answers"></div>
    </div>
    <script src="main-6.js"></script>
</body>
</html>