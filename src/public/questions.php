<?php
include '../utils/db.php';
// Stellen Sie sicher, dass die POST-Daten empfangen wurden
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $category = $_POST['category'] ?? '';
    $difficulty = $_POST['difficulty'] ?? '';
    $mode = $_POST['mode'] ?? '';
    
    // Hier sollten Sie Ihre Datenbankabfrage durchführen
    // $question = getQuestionFromDatabase($category, $difficulty);
    // $answers = getAnswersFromDatabase($question_id);
}

// Platzhalter für Frage und Antworten (nur für Testzwecke)
$question = "Dies ist ein Platzhalter für die Frage?";
$answers = [
    ["answer" => "Antwort 1", "is_correct" => "1"],
    ["answer" => "Antwort 2", "is_correct" => "0"],
    ["answer" => "Antwort 3", "is_correct" => "0"],
    ["answer" => "Antwort 4", "is_correct" => "0"]
];
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
    <style>
        #countdown {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 40vw;
            transition: all 0.5s ease;
            opacity: 1;
        }
        #quiz-content {
            display: none;
        }
    </style>
</head>
<body>
    <?php include '../utils/header.php'; ?>
    <div id="countdown-container"></div>
    <div id="quiz-content" class="quiz-container">
        <div class="question"><?php echo htmlspecialchars($question); ?></div>
        <div class="answers">
            <?php foreach ($answers as $answer): ?>
                <button class="answer-btn" data-correct="<?php echo $answer['is_correct']; ?>"><?php echo htmlspecialchars($answer['answer']); ?></button>
            <?php endforeach; ?>
        </div>
    </div>
    <script>
    $(document).ready(function () {
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
                var countdown = $('<div id="countdown">GO!</div>');
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

        // Your existing quiz logic
        document.querySelectorAll('.answer-btn').forEach(button => {
            button.addEventListener('click', function() {
                const isCorrect = this.getAttribute('data-correct') === '1';
                this.style.backgroundColor = isCorrect ? 'green' : 'red';
                console.log('Gewählte Antwort:', this.textContent, 'Korrekt:', isCorrect);
                
                // Here you can implement logic for moving to the next question
                setTimeout(() => {
                    location.reload(); // Reloads the page for the next question
                }, 1000);
            });
        });
    });
    </script>
</body>
</html>