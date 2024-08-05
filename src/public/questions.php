<?php
include '../utils/db.php';

if (!isset($_SESSION)) {
    session_start();
}

$showCountdown = isset($_GET['start_countdown']) && $_GET['start_countdown'] == '1';

// Lesen Sie die ausgewählte Kategorie aus
$category = isset($_POST['category']) ? $_POST['category'] : (isset($_SESSION['category']) ? $_SESSION['category'] : '');
$amount = 10; // Gesamtanzahl der Fragen für das Quiz

// Fragen IDS werden geladen, Index und Score reset 
if (!isset($_SESSION['questionIds']) || !isset($_SESSION['questionIndex']) || $_SESSION['category'] !== $category) {
    $questionData = questionIdAndIndex($category, $amount, $dbConnection);
    $_SESSION['questionIds'] = $questionData['questionIds'];
    $_SESSION['questionIndex'] = 0;
    $_SESSION['score'] = 0;
    $_SESSION['category'] = $category;
    $_SESSION['totalQuestions'] = count($_SESSION['questionIds']);
}

    // überprüft ob eine antwort gesendet wurde, 
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $currentQuestionId = $_SESSION['questionIds'][$_SESSION['questionIndex']];
        $questionData = singlequestionID($currentQuestionId, $dbConnection);
        $isMulti = $questionData['is_multi'];
    
        if ($isMulti && isset($_POST['submit_multi'])) {
            $selectedAnswers = isset($_POST['answers']) ? $_POST['answers'] : [];
            $correctAnswers = array_filter($questionData['answers'], function($answer) {
                return $answer['is_correct'] == 1;
            });
            $correctAnswerIds = array_column($correctAnswers, 'id');
            
            $isCorrect = count($selectedAnswers) == count($correctAnswerIds) &&
                         empty(array_diff($selectedAnswers, $correctAnswerIds));
    
            if ($isCorrect) {
                $_SESSION['score']++;
            }
            $_SESSION['questionIndex']++;
        } elseif (!$isMulti && isset($_POST['answer'])) {
            $selectedAnswerId = $_POST['answer'];
            $checkAnswerQuery = "SELECT is_correct FROM answers WHERE id = :answerId AND question_id = :questionId";
            $stmt = $dbConnection->prepare($checkAnswerQuery);
            $stmt->execute([':answerId' => $selectedAnswerId, ':questionId' => $currentQuestionId]);
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
            if ($result && $result['is_correct'] == 1) {
                $_SESSION['score']++;
            }
            $_SESSION['questionIndex']++;
        }
    }

    // Überprüft ob Quiz beendet ist
    if ($_SESSION['questionIndex'] >= $_SESSION['totalQuestions']) {
    $quizFinished = true;
    $score = $_SESSION['score'];
    $totalQuestions = $_SESSION['totalQuestions'];
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
        <div class="progress">Frage <?php echo $_SESSION['questionIndex'] + 1; ?> von <?php echo $_SESSION['totalQuestions']; ?></div>
        <div class="question"><?php echo htmlspecialchars($question); ?></div>
        <form method="POST" action="">
    <div class="answers">
        <?php foreach ($answers as $answer): ?>
            <?php if ($isMulti): ?>
    <div class="answer-btn multi-choice">
        <input type="checkbox" id="answer_<?php echo $answer['id']; ?>" name="answers[]" value="<?php echo $answer['id']; ?>">
        <label for="answer_<?php echo $answer['id']; ?>">
            <?php echo htmlspecialchars($answer['answer']); ?>
        </label>
    </div>
<?php else: ?>
    <button type="submit" name="answer" value="<?php echo $answer['id']; ?>" class="answer-btn"><?php echo htmlspecialchars($answer['answer']); ?></button>
<?php endif; ?>
        <?php endforeach; ?>
    
    <?php if ($isMulti): ?>
        <button type="submit" name="submit_multi" class="submit-btn-q">Antworten einreichen</button>
    <?php endif; ?>
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