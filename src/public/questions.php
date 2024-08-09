<?php
include '../utils/db.php';

if (!isset($_SESSION)) {
    session_start();
}

$showCountdown = isset($_GET['start_countdown']) && $_GET['start_countdown'] == '1';

$category = isset($_POST['category']) ? $_POST['category'] : (isset($_SESSION['category']) ? $_SESSION['category'] : '');
$isEliminationMode = isset($_SESSION['mode']) && $_SESSION['mode'] === 'elimination';

// Initialisierung der Quiz-Daten
if (!isset($_SESSION['questionIds']) || !isset($_SESSION['questionIndex']) || $_SESSION['category'] !== $category) {
    $mode = isset($_POST['mode']) ? $_POST['mode'] : 'standard';
    
    $questionData = questionIdandIndex($category, $dbConnection, $mode);
    $_SESSION['questionIds'] = $questionData['questionIds'];
    $_SESSION['questionIndex'] = 0; // Sicherstellen, dass wir bei 0 beginnen
    $_SESSION['score'] = 0;
    $_SESSION['category'] = $category;
    $_SESSION['mode'] = $mode;
    $_SESSION['totalQuestions'] = count($_SESSION['questionIds']);
    $quizFinished = false;
} else {
    // Verarbeitung der Antwort, nur wenn es nicht die erste Frage ist
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && (isset($_POST['answer']) || isset($_POST['answers']))) {
        $currentQuestionId = $_SESSION['questionIds'][$_SESSION['questionIndex']];
        $questionData = singlequestionID($currentQuestionId, $dbConnection);
        $isMulti = $questionData['is_multi'];
        $isCorrect = false;
    
        if ($isMulti) {
            // Verarbeitung von Multiple-Choice-Fragen
            if (isset($_POST['answers'])) {
                $selectedAnswerIds = $_POST['answers'];
                $correctAnswerIds = array_column(array_filter($questionData['answers'], function($a) { return $a['is_correct'] == 1; }), 'id');
                
                // Überprüfen, ob die ausgewählten Antworten genau den korrekten Antworten entsprechen
                $isCorrect = count($selectedAnswerIds) == count($correctAnswerIds) && 
                             count(array_diff($selectedAnswerIds, $correctAnswerIds)) == 0;
                
                if ($isCorrect) {
                    $_SESSION['score']++;
                }
            }
            // Bei Multiple-Choice immer zur nächsten Frage gehen, unabhängig von der Korrektheit
            $_SESSION['questionIndex']++;
        } else {
            // Verarbeitung von Single-Choice-Fragen (bleibt unverändert)
            if (isset($_POST['answer'])) {
                $selectedAnswerId = $_POST['answer'];
                $checkAnswerQuery = "SELECT is_correct FROM answers WHERE id = :answerId AND question_id = :questionId";
                $stmt = $dbConnection->prepare($checkAnswerQuery);
                $stmt->execute([':answerId' => $selectedAnswerId, ':questionId' => $currentQuestionId]);
                $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
                $isCorrect = $result && $result['is_correct'] == 1;
                if ($isCorrect) {
                    $_SESSION['score']++;
                }
            }
    
            if ($isEliminationMode) {
                if (!$isCorrect) {
                    $quizFinished = true;
                } else {
                    $_SESSION['questionIndex']++;
                }
            } else {
                $_SESSION['questionIndex']++;
            }
        }
    }
}

if (isset($_POST['startTime'])) {
    $startTime = $_POST['startTime'];
    $_SESSION['startTime'] = $startTime;
    unset($_POST['startTime']);
}

$quizFinished = $quizFinished ?? ($_SESSION['questionIndex'] >= $_SESSION['totalQuestions']);
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
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/questions.css">
    <link rel="stylesheet" href="assets/css/progressBarStand.css">
    <link rel="stylesheet" href="assets/css/progressBarRapid.css">
    <link href="https://fonts.googleapis.com/css2?family=Bowlby+One+SC&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<?php include '../utils/header.php'; ?>
    <div id="countdown-container"></div>
    <div class="quiz-page">
    <?php include '../utils/progressBarStand.php';?>
    <div class="timer-bar-container">  
    <?php include '../utils/progressBarRapid.php';?>

        <div id="quiz-content" class="quiz-container fadeInElement">
            <?php if ($quizFinished): ?>
                <div class="question">
                    Quiz beendet! Ihr Ergebnis: <?php echo $score; ?> von <?php echo $totalQuestions; ?>
                </div>
            <?php else: ?>
                <div class="question">
                    <?php echo htmlspecialchars($question); ?>
                </div>
                <form method="POST" action="">
                    <div class="answers">
                        <?php foreach ($answers as $answer): ?>
                            <?php if ($isMulti): ?>
                                <div class="answer-btn multi-choice">
                                    <input type="checkbox" 
                                        id="answer_<?php echo $answer['id']; ?>" 
                                        name="answers[]" 
                                        value="<?php echo $answer['id']; ?>">
                                    <label for="answer_<?php echo $answer['id']; ?>">
                                        <?php echo htmlspecialchars($answer['answer']); ?>
                                    </label>
                                </div>
                            <?php else: ?>
                                <button type="submit" 
                                        name="answer" 
                                        value="<?php echo $answer['id']; ?>" 
                                        class="answer-btn">
                                    <?php echo htmlspecialchars($answer['answer']); ?>
                                </button>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </div>
                </form>
            <?php endif; ?>
        </div>
    </div>
    
    <?php if ($isMulti && !$quizFinished): ?>
        <form method="POST" action="">
            <button type="submit" name="submit_multi" class="submit-btn-q">
                Antworten einreichen
            </button>
        </form>
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
        var showCountdown = <?php echo json_encode($showCountdown); ?>;
        
        if (showCountdown) {
            var counter = 3;
            
            var timer = setInterval(function() {
                $('#countdown').remove();
                
                if (counter > 0) {
                    var countdown = $('<div id="countdown">' + counter + '</div>');
                    countdown.appendTo($('#countdown-container'));
                    setTimeout(() => {
                        $('#countdown').css({ 'font-size': '0vw', 'opacity': 0 });
                    }, 20);
                } else if (counter === 0) {
                    var countdown = $('<div id="countdown">GO</div>');
                    countdown.appendTo($('#countdown-container'));
                    setTimeout(() => {
                        $('#countdown').css({ 'font-size': '0vw', 'opacity': 0 });
                    }, 20);
                } else {
                    clearInterval(timer);
                    $('#quiz-content').fadeIn(500);
                }
                
                counter--;
            }, 1000);
        } else {
            $('#quiz-content').show();
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
    <!-- <?php include '../utils/progressBarStandJS.php'; ?> -->
    <?php include '../utils/progressBarRapidJS.php';?>

</body>
</html>