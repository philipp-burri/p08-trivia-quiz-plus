<?php if (!isset($_SESSION)) {
    session_start();
} 

include dirname(__DIR__) . '/utils/db.php';

if (isset($_POST['endTime'])) {
    $startTime = $_POST['endTime'];
    $_SESSION['endTime'] = $startTime;
    unset($_POST['endTime']);
        
    }

    $startTime = new DateTime($_SESSION['startTime']);
    $endTime = new DateTime($_SESSION['endTime']);

// Calculate the difference
$interval = $startTime->diff($endTime);

// Get the difference in seconds
$quizTimeInSec = $interval->s + ($interval->i * 60) + ($interval->h * 3600) + ($interval->days * 86400);
$quizTimeInMil = ($quizTimeInSec * 1000) + ($interval->f * 1000);
$_SESSION['quiztime']= $quizTimeInMil;

function formatTime($quizTimeInMil) {
    // Berechne die Gesamtzeit in Sekunden und Millisekunden
    $totalSeconds = floor($quizTimeInMil / 1000);
    $remainingMilliseconds = $quizTimeInMil % 1000;
    
    // Berechne die Minuten und verbleibenden Sekunden
    $minutes = floor($totalSeconds / 60);
    $seconds = $totalSeconds % 60;
    
    // Berechne die Hundertstelsekunden (zwei Nachkommastellen der Millisekunden)
    $hundredthsOfSeconds = floor($remainingMilliseconds / 10); // Millisekunden in Hundertstelsekunden umwandeln
    
    // Formatiere die Zeit im Format mm:ss:th
    $formattedTime = sprintf('%02d:%02d:%02d', $minutes, $seconds, $hundredthsOfSeconds);
    
    return $formattedTime;
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="assets/scripts.php" method="POST">
    <input type="hidden" name="send_ranking_simple" value="1">
    <button type="submit">simple</button>
</form>
<form action="assets/scripts.php" method="POST">
    <input type="hidden" name="send_ranking_advanced" value="1">
    <button type="submit">advanced</button>
</form>

<form action="assets/scripts.php" method="POST">
    <select name="category" id="category">
        <option value="animals">Tiere</option>
        <option value="geography">Geographie</option>
        <option value="history">Geschichte</option>
    </select>
    <select name="level" id="level">
        <option value="beginner">Anfänger</option>
        <option value="advanced">Fortgeschritten</option>
    </select>
    <button type="submit">advanced</button>
</form>

<?php
echo formatTime($quizTimeInMil); 

prettyPrint($_SESSION['category'])
?>

</body>
</html>