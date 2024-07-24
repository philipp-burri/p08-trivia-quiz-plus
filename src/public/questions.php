<?php
// Stellen Sie sicher, dass die POST-Daten empfangen wurden
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $category = $_POST['category'] ?? '';
    $difficulty = $_POST['difficulty'] ?? '';
    $mode = $_POST['mode'] ?? '';

    // Hier würden Sie später Ihre Datenbankverbindung und Abfrage einfügen
    // Beispiel:
    // $question = getQuestionFromDatabase($category, $difficulty);
    // $answers = getAnswersFromDatabase($question_id);

    // Platzhalter für Frage und Antworten
    $question = "Dies ist ein Platzhalter für die Frage";
    $answers = [
        "Antwort 1",
        "Antwort 2",
        "Antwort 3",
        "Antwort 4"
    ];

    // HTML-Template
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

</head>



    <body>
    <?php include '../utils/header.php'; ?>
        <div class="quiz-container">
            <div class="question"><?php echo htmlspecialchars($question); ?></div>
            <div class="answers">
                <?php foreach ($answers as $answer): ?>
                    <button class="answer-btn"><?php echo htmlspecialchars($answer); ?></button>
                <?php endforeach;?>
            </div>
        </div>
        <script>
            // Hier können Sie später JavaScript für die Quiz-Logik hinzufügen
            document.querySelectorAll('.answer-btn').forEach(button => {
                button.addEventListener('click', function() {
                    // Logik für die Antwortauswahl
                    console.log('Gewählte Antwort:', this.textContent);
                });
            });
        </script>
    </body>
    </html>
    <?php
} else {
    echo "Direkter Zugriff nicht erlaubt.";
}
?>