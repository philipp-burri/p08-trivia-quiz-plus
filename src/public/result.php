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


</body>
</html>