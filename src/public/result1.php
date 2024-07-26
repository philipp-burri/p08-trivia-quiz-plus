<?php
session_start();

// Überprüfen Sie, ob die Ergebnisvariablen in der Session vorhanden sind
if (!isset($_SESSION['finalScore']) || !isset($_SESSION['finalTotalQuestions'])) {
    // Wenn nicht, leiten Sie zurück zur Auswahlseite
    header('Location: selection.php');
    exit;
}

$score = $_SESSION['finalScore'];
$totalQuestions = $_SESSION['finalTotalQuestions'];

// Löschen Sie die Ergebnisvariablen aus der Session
unset($_SESSION['finalScore']);
unset($_SESSION['finalTotalQuestions']);
?>

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Ergebnis</title>
    <link rel="stylesheet" href="assets/css/result.css">
</head>
<body>
    <div class="result-container">
        <h1>Quiz beendet!</h1>
        <p>Ihr Ergebnis: <?php echo $score; ?> von <?php echo $totalQuestions; ?></p>
        <a href="selection.php" class="btn">Neues Quiz starten</a>
    </div>
</body>
</html>