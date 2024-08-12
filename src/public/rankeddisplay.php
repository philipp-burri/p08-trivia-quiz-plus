
<?php if (!isset($_SESSION)) {
    session_start();
} ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    
    include 'assets/scripts.php';

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
    
    

    $ranked= displayRankedAndvanced($dbConnection, $category, $difficulty, $mode);

if (!empty($ranked)) {
    echo '<table border="1">';
    echo '<thead>';
    echo '<tr>';
    echo '<th>Name</th>';
    echo '<th>Points</th>';
    echo '<th>Time</th>';
    echo '</tr>';
    echo '</thead>';
    echo '<tbody>';
    foreach ($ranked as $entry) {
        echo '<tr>';
        echo '<td>' . htmlspecialchars($entry['name']) . '</td>';
        echo '<td>' . htmlspecialchars($entry['points']) . '</td>';
        echo '<td>' . htmlspecialchars(formatTime($entry['time'])) . '</td>';
        echo '</tr>';
    }
    echo '</tbody>';
    echo '</table>';
} else {
    echo 'Keine Einträge gefunden.';
}

    ?>
</body>
</html>

