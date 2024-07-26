<?php if (!isset($_SESSION)) {
    session_start();
} ?>
<?php
include '../utils/db.php';

if (!isset($_SESSION)) {
    session_start();
}

$showCountdown = isset($_GET['start_countdown']) && $_GET['start_countdown'] == '1';

$type = 'mixed'; // oder die gewünschte Kategorie
$amount = 10; // Gesamtanzahl der Fragen für das Quiz

// Initialisieren Sie die Session-Variablen, wenn das Quiz startet
if (!isset($_SESSION['questionIds']) || !isset($_SESSION['questionIndex'])) {
    $questionData = questioenIdandIndex($type, $amount, $dbConnection);
    $_SESSION['questionIds'] = $questionData['questionIds'];
    $_SESSION['questionIndex'] = 0;
    $_SESSION['score'] = 0;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['answer'])) {
    $selectedAnswerId = $_POST['answer'];
    $currentQuestionId = $_SESSION['questionIds'][$_SESSION['questionIndex']];
    
    // Überprüfen Sie, ob die Antwort korrekt ist
    $checkAnswerQuery = "SELECT is_correct FROM answers WHERE id = :answerId AND question_id = :questionId";
    $stmt = $dbConnection->prepare($checkAnswerQuery);
    $stmt->execute([':answerId' => $selectedAnswerId, ':questionId' => $currentQuestionId]);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
    if ($result && $result['is_correct'] == 1) {
        $_SESSION['score']++;
    }
    
    $_SESSION['questionIndex']++;
}

// Überprüfen Sie, ob das Quiz beendet ist
if ($_SESSION['questionIndex'] >= count($_SESSION['questionIds'])) {
    $quizFinished = true;
    $score = $_SESSION['score'];
    $totalQuestions = count($_SESSION['questionIds']);
    
    // Setzen Sie die Session-Variablen zurück
    unset($_SESSION['questionIds']);
    unset($_SESSION['questionIndex']);
    unset($_SESSION['score']);
} else {
    $quizFinished = false;
    // Laden Sie die aktuelle Frage
    $currentQuestionId = $_SESSION['questionIds'][$_SESSION['questionIndex']];
    $questionData = singlequestionID($currentQuestionId, $dbConnection);

    $question = $questionData['question'];
    $answers = $questionData['answers'];
    $isMulti = $questionData['is_multi'];

    // Mischen Sie die Antworten
    shuffle($answers);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/questions.css">
    <link href="https://fonts.googleapis.com/css2?family=Bowlby+One+SC&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <?php include '../utils/header.php'; ?>
    <div id="countdown-container"></div>
    <div id="quiz-content" class="quiz-container" style="display: none;">
        <?php if ($quizFinished): ?>
            <div class="question">Quiz beendet! Ihr Ergebnis: <?php echo $score; ?> von <?php echo $totalQuestions; ?></div>
        <?php else: ?>
            <div class="question"><?php echo htmlspecialchars($question); ?></div>
            <form method="POST" action="">
                <div class="answers">
                    <?php foreach ($answers as $answer): ?>
                        <button type="submit" name="answer" value="<?php echo $answer['id']; ?>" class="answer-btn"><?php echo htmlspecialchars($answer['answer']); ?></button>
                    <?php endforeach; ?>
                </div>
            </form>
        <?php endif; ?>
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
    </script>
</body>
</html>