<?php if (!isset($_SESSION)) {
    session_start();
} ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/header.css">
    <title>Leaderboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="icon" href="/assets/img/faviconQ.png" type="image/x-icon">
    <style>
        body, html {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            width: 100%;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(90deg, #6A1B9A, #4A0E82);
            animation: gradientBG 15s ease infinite;
            display: flex;
            flex-direction: column;
        }
        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
        
        .content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        .leaderboard-container {
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            padding: 40px;
            width: 80%;
            max-width: 800px;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.3);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            color: white;
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid rgba(255, 255, 255, 0.3);
        }
        th {
            background-color: rgba(255, 255, 255, 0.2);
            font-weight: bold;
        }
        tr:hover {
            background-color: rgba(255, 255, 255, 0.1);
        }
        .no-entries {
            color: white;
            text-align: center;
            font-size: 1.2em;
            margin-top: 20px;
        }
    </style>
</head>
<body>

        <?php include '../utils/header.php'; ?>

    <div class="content">
        <div class="leaderboard-container">
            <?php
            include 'assets/scripts.php';
            function formatTime($quizTimeInMil) {
                $totalSeconds = floor($quizTimeInMil / 1000);
                $remainingMilliseconds = $quizTimeInMil % 1000;
                $minutes = floor($totalSeconds / 60);
                $seconds = $totalSeconds % 60;
                $hundredthsOfSeconds = floor($remainingMilliseconds / 10);
                return sprintf('%02d:%02d:%02d', $minutes, $seconds, $hundredthsOfSeconds);
            }
            
            $ranked = displayRankedAndvanced($dbConnection, $category, $difficulty, $mode);
            if (!empty($ranked)) {
                echo '<table>';
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
                echo '<div class="no-entries">Keine Einträge gefunden.</div>';
            }
            ?>
        </div>
    </div>
</body>
</html>


