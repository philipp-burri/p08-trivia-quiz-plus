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
                <circle class="timer-ring__circle" stroke="red" stroke-width="8" fill="transparent" r="67" cx="75" cy="75"/>
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