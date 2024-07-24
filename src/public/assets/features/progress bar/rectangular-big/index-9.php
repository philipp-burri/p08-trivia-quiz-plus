<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz</title>
    <link rel="stylesheet" href="style-9.css">
</head>
<body>
    <div class="quiz-container">
        <div class="timer-container">
            <svg class="timer-ring" width="300" height="300" viewBox="0 0 300 300"> <!--Grösse der Box einstellen-->
                <defs>
                    <linearGradient id="timerGradient" x1="0%" y1="0%" x2="100%" y2="0%">
                        <stop offset="0%" stop-color="#8A2BE2" />
                        <stop offset="100%" stop-color="#FFA500" />
                    </linearGradient>
                </defs>
                <rect class="timer-ring__circle" x="10" y="10" width="280" height="280" rx="40" ry="40" stroke="url(#timerGradient)" stroke-width="8" fill="transparent"/>
                <rect class="progress-ring__circle" x="26" y="26" width="248" height="248" rx="32" ry="32" stroke="blue" stroke-width="18" fill="transparent"/>
            </svg>
            <div class="timer">10</div>
            <div class="content-container">
                <div id="question"></div>
                <div id="answers"></div>
            </div>
        </div>
    </div>
    <script src="main-9.js"></script>
</body>
</html>