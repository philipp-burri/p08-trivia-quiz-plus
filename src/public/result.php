<?php if (!isset($_SESSION)) {
    session_start();
} 

include __DIR__ . '/../utils/db.php';
/* include __DIR__ . '/../utils/ranked.php'; */

if (isset($_POST['endTime'])) {
    $endTime = $_POST['endTime'];
    $_SESSION['endTime'] = $endTime;
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

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php include '../utils/header.php'; ?>

<form action="assets/scripts.php" method="POST">
    <input type="hidden" name="send_ranking_advanced" value="1">
    <input type="text" name="name" placeholder="Dein Name" required>
    <button type="submit">Absenden</button>
</form>

</body>
</html>