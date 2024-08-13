<?php
include '../utils/db.php';

if (!isset($_SESSION)) {
    session_start();
}

$showCountdown = isset($_GET['start_countdown']) && $_GET['start_countdown'] == '1';

// holt die value aus der POST
$category = $_POST['category'] ?? $_SESSION['category'] ?? '';
$difficulty = $_POST['difficulty'] ?? $_SESSION['difficulty'] ?? 'easy';
$mode = $_POST['mode'] ?? $_SESSION['mode'] ?? 'standard';

// speichert values in der session
$_SESSION['category'] = $category;
$_SESSION['difficulty'] = $difficulty;
$_SESSION['mode'] = $mode;

// setzt level auf 2 if difficutly = hard
$level = ($difficulty === 'hard') ? 2 : 1;

$isEliminationMode = $mode === 'elimination';
$isRapidMode = $mode === 'rapid';


if (!isset($_SESSION['questionIds']) || !isset($_SESSION['questionIndex']) || $_SESSION['category'] !== $category || $_SESSION['difficulty'] !== $difficulty) {
    $questionData = questionIdandIndex($category, $dbConnection, $mode, $level);
    $_SESSION['questionIds'] = $questionData['questionIds'];
    $_SESSION['questionIndex'] = 0;
    $_SESSION['score'] = 0;
    $_SESSION['totalQuestions'] = count($_SESSION['questionIds']);
    $quizFinished = false;
}

$quizFinished = false;

if ($_SERVER['REQUEST_METHOD'] === 'POST' && (isset($_POST['answer']) || isset($_POST['answers']) || isset($_POST['timeout']))) {
    $currentQuestionId = $_SESSION['questionIds'][$_SESSION['questionIndex']];
    $questionData = singlequestionID($currentQuestionId, $dbConnection);
    $isMulti = $questionData['is_multi'];
    $isCorrect = false;

    if (isset($_POST['timeout'])) {
   
        $_SESSION['questionIndex']++;
    } else {
        if ($isMulti) {
            if (isset($_POST['answers'])) {
                $selectedAnswerIds = $_POST['answers'];
                $correctAnswerIds = array_column(array_filter($questionData['answers'], function($a) { return $a['is_correct'] == 1; }), 'id');
                $isCorrect = count($selectedAnswerIds) == count($correctAnswerIds) && 
                             count(array_diff($selectedAnswerIds, $correctAnswerIds)) == 0;
            }
        } else {
            if (isset($_POST['answer'])) {
                $selectedAnswerId = $_POST['answer'];
                $correctAnswerId = array_column(array_filter($questionData['answers'], function($a) { return $a['is_correct'] == 1; }), 'id')[0];
                $isCorrect = $selectedAnswerId == $correctAnswerId;
            }
        }

        if ($isCorrect) {
            $_SESSION['score']++;
        }

        if ($isEliminationMode && !$isCorrect) {
            $quizFinished = true;
        } else {
            $_SESSION['questionIndex']++;
        }
    }
}

if (isset($_POST['startTime'])) {
    $_SESSION['startTime'] = $_POST['startTime'];
    unset($_POST['startTime']);
}

$quizFinished = $quizFinished || ($_SESSION['questionIndex'] >= $_SESSION['totalQuestions']);
if ($quizFinished) {
    $score = $_SESSION['score'];
    $totalQuestions = $_SESSION['totalQuestions'];
} else {
    $currentQuestionId = $_SESSION['questionIds'][$_SESSION['questionIndex']];
    $questionData = singlequestionID($currentQuestionId, $dbConnection);
    $question = $questionData['question'];
    $answers = $questionData['answers'];
    $isMulti = $questionData['is_multi'];
    shuffle($answers);
}
$currentQuestion = $_SESSION['questionIndex'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TriviaQuiz++ - Fragen</title>
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/questions.css">
    <link rel="stylesheet" href="assets/css/progressBarStand.css">
    <link rel="stylesheet" href="assets/css/progressBarRapid.css">
    <link href="https://fonts.googleapis.com/css2?family=Bowlby+One+SC&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="icon" href="/assets/img/trivia-quiz-high-resolution-logo.png" type="image/x-icon">

</head>
<body>
<?php include '../utils/header.php'; ?>
    <div id="countdown-container"></div>
    <div class="quiz-page">
    <?php include '../utils/progressBarStand.php';?>
    
    <?php if ($isRapidMode): ?>
        <div class="timer-bar-container">
            <div class="timer-container">
                <svg class="timer-ring" width="100%" height="100%" viewBox="0 0 800 500">
                    <rect class="timer-ring__circle" x="4" y="4" width="792" height="492" rx="20" ry="20" fill="none" stroke="white" stroke-width="4"/>
                </svg>
            </div>
            <div id="quiz-content" class="quiz-container fadeInElement">
                <?php if ($quizFinished): ?>
                    <div class="question">
                        Quiz beendet! Ihr Ergebnis: <?php echo $score; ?> von <?php echo $totalQuestions; ?>
                    </div>
                <?php else: ?>
                    <div class="question">
                        <?php echo htmlspecialchars($question); ?>
                    </div>
                    <?php if ($isMulti): ?>
                        <form method="POST" action="" id="quiz-form">
                            <div class="answers">
                                <?php foreach ($answers as $answer): ?>
                                    <div class="answer-btn multi-choice">
                                        <input type="checkbox" 
                                               id="answer_<?php echo $answer['id']; ?>" 
                                               name="answers[]" 
                                               value="<?php echo $answer['id']; ?>">
                                        <label for="answer_<?php echo $answer['id']; ?>">
                                            <?php echo htmlspecialchars($answer['answer']); ?>
                                        </label>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                            <button type="submit" name="submit_multi" class="submit-btn-q">
                                Antworten einreichen
                            </button>
                            <input type="hidden" name="timeout" id="timeout" value="0">
                        </form>
                    <?php else: ?>
                        <form method="POST" action="" id="quiz-form">
                            <div class="answers">
                                <?php foreach ($answers as $answer): ?>
                                    <button type="submit" 
                                            name="answer" 
                                            value="<?php echo $answer['id']; ?>" 
                                            class="answer-btn">
                                        <?php echo htmlspecialchars($answer['answer']); ?>
                                    </button>
                                <?php endforeach; ?>
                            </div>
                            <input type="hidden" name="timeout" id="timeout" value="0">
                        </form>
                    <?php endif; ?>
                <?php endif; ?>
            </div>
        </div>
    <?php else: ?>
        <div id="quiz-content" class="quiz-container fadeInElement">
            <?php if ($quizFinished): ?>
                <div class="question">
                    Quiz beendet! Ihr Ergebnis: <?php echo $score; ?> von <?php echo $totalQuestions; ?>
                </div>
            <?php else: ?>
                <div class="question">
                    <?php echo htmlspecialchars($question); ?>
                </div>
                <?php if ($isMulti): ?>
                    <form method="POST" action="">
                        <div class="answers">
                            <?php foreach ($answers as $answer): ?>
                                <div class="answer-btn multi-choice">
                                    <input type="checkbox" 
                                           id="answer_<?php echo $answer['id']; ?>" 
                                           name="answers[]" 
                                           value="<?php echo $answer['id']; ?>">
                                    <label for="answer_<?php echo $answer['id']; ?>">
                                        <?php echo htmlspecialchars($answer['answer']); ?>
                                    </label>
                                </div>
                            <?php endforeach; ?>
                     
                        </div>
                            <button type="submit" name="submit_multi" class="submit-btn-q">
                            Antworten einreichen
                            </button>
                    </form>
                <?php else: ?>
                    <form method="POST" action="">
                        <div class="answers">
                            <?php foreach ($answers as $answer): ?>
                                <button type="submit" 
                                        name="answer" 
                                        value="<?php echo $answer['id']; ?>" 
                                        class="answer-btn">
                                    <?php echo htmlspecialchars($answer['answer']); ?>
                                </button>
                            <?php endforeach; ?>
                        </div>
                    </form>
                <?php endif; ?>
            <?php endif; ?>
        </div>
    <?php endif; ?>
    
    <form id="hiddenFormStart" method="POST">
        <input type="hidden" name="startTime" id="startTime" value="">
    </form>
    <form id="hiddenFormEnd" method="POST" action="result.php">
        <input type="hidden" name="endTime" id="endTime" value="">
    </form>
</div>
    <script>
        $(document).ready(function () {
            $('#quiz-content').show();
            
        if (<?php echo json_encode($isRapidMode); ?>) {
            var timerRing = document.querySelector('.timer-ring__circle');
            var totalTime = 10000; // 10 Sekunden in Millisekunden
            var startTime = Date.now();


                function updateTimer() {
                var currentTime = Date.now();
                var elapsedTime = currentTime - startTime;
                var timeLeft = Math.max(0, totalTime - elapsedTime);

            if (timeLeft > 0) {
                var progress = (timeLeft / totalTime) * 2584;
                timerRing.style.strokeDashoffset = 2584 - progress;
                requestAnimationFrame(updateTimer);
            } else {
                document.getElementById('timeout').value = '1';
                document.getElementById('quiz-form').submit();
            }
        }

        requestAnimationFrame(updateTimer);
    }
});

    function safeStartTime() {
    var hiddenInput = document.getElementById("startTime");
    var time = new Date();
    var startTime= time.toISOString();
    hiddenInput.value = startTime;
    var form = document.getElementById("hiddenFormStart");
    form.submit();
    }

    function safeEndTime() {
    var hiddenInput = document.getElementById("endTime");
    var time = new Date();
    var endTime= time.toISOString();
    hiddenInput.value = endTime;
    var form = document.getElementById("hiddenFormEnd");
    form.submit();
    }
    </script>
    <?php
    
    if (!isset($_SESSION['startTimeLogged']) && isset($_SESSION['questionIndex']) && $_SESSION['questionIndex'] === 0) {
        $_SESSION['startTimeLogged'] = true;
        echo   '<script>
                safeStartTime();
                </script>';
    } 
    
    if (!isset($_SESSION['endTimeLogged']) && isset($_SESSION['questionIndex']) && $_SESSION['questionIndex'] === 10) {
        $_SESSION['endTimeLogged'] = true;
        echo   '<script>
                safeEndTime()
                </script>';
    }
    
    ?>
    <?php include '../utils/progressBarStandJS.php';

    ?>

</body>
</html>