<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz</title>
    <link rel="stylesheet" href="style-8.css">
</head>
<body>
    <div class="quiz-container">
        <div class="timer-container">
            <svg class="timer-ring" width="150" height="150" viewBox="0 0 150 150">
                <defs>
                    <linearGradient id="timerGradient" x1="0%" y1="0%" x2="100%" y2="0%">
                        <stop offset="0%" stop-color="#8A2BE2" />
                        <stop offset="100%" stop-color="#FFA500" />
                    </linearGradient>
                </defs>
                <rect class="timer-ring__circle" x="5" y="5" width="140" height="140" rx="20" ry="20" stroke="url(#timerGradient)" stroke-width="8" fill="transparent"/>
                <rect class="progress-ring__circle" x="13" y="13" width="124" height="124" rx="16" ry="16" stroke="blue" stroke-width="12" fill="transparent"/>
            </svg>
            <div class="timer">10</div>
        </div>
        <div id="question"></div>
        <div id="answers"></div>
    </div>
    <script src="main-8.js"></script>
</body>
</html>