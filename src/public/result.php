<?php
if (!isset($_SESSION)) {
    session_start();
}
include __DIR__ . '/../utils/db.php';

if (isset($_POST['endTime'])) {
    $endTime = $_POST['endTime'];
    $_SESSION['endTime'] = $endTime;
    unset($_POST['endTime']);
}

$startTime = new DateTime($_SESSION['startTime']);
$endTime = new DateTime($_SESSION['endTime']);
$interval = $startTime->diff($endTime);
$quizTimeInSec = $interval->s + ($interval->i * 60) + ($interval->h * 3600) + ($interval->days * 86400);
$quizTimeInMil = ($quizTimeInSec * 1000) + ($interval->f * 1000);
$_SESSION['quiztime'] = $quizTimeInMil;
?>

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ergebnis</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            width: 100%;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(90deg, #6A1B9A, #4A0E82);
            animation: gradientBG 15s ease infinite;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            max-width: 1000px;
            padding: 30px;
            box-sizing: border-box;
        }
        .result-container {
            border-radius: 20px;
            padding: 40px;
            width: 788px;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.3);
            display: flex;
            flex-direction: column;
            box-sizing: border-box;
            background-color: rgba(255, 255, 255, 0.1);
        }
        h1 {
            color: white;
            text-align: center;
            margin-bottom: 30px;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        input[type="text"] {
            width: 100%;
            padding: 15px;
            margin-bottom: 20px;
            border: 3px solid white;
            background-color: rgba(255, 255, 255, 0.2);
            color: white;
            border-radius: 15px;
            font-size: 1.2em;
        }
        .submit-btn {
            width: 100%;
            padding: 15px;
            border: 3px solid white;
            background-color: rgb(255, 255, 255);
            color: #5a189a;
            cursor: pointer;
            border-radius: 15px;
            font-size: 1.2em;
            font-weight: bold;
            transition: all 0.3s ease;
        }
        .submit-btn:hover {
            transform: translateY(-1px);
            box-shadow: 0 7px 20px rgba(255, 255, 255, 0.4);
        }
        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
    </style>
</head>
<body>
    <?php include '../utils/header.php'; ?>
    <div class="container">
        <div class="result-container">
            <h1>Quiz Ergebnis</h1>
            <form action="assets/scripts.php" method="POST">
                <input type="hidden" name="send_ranking_advanced" value="1">
                <input type="text" name="name" placeholder="Dein Name" required>
                <button type="submit" class="submit-btn">Absenden</button>
            </form>
        </div>
    </div>
</body>
</html>