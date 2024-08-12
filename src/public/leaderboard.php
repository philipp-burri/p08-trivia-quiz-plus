<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/leaderboard.css">
    <title>Leaderboard</title>
</head>
<body>
<form action="assets/scripts.php" method="POST">
    <select name="category" id="category">
        <option value="animals">Tiere</option>
        <option value="geography">Geographie</option>
        <option value="history">Geschichte</option>
        <option value="football">Fussball</option>
    </select>
    <select name="difficulty" id="difficulty">
        <option value="easy">Anfänger</option>
        <option value="hard">Fortgeschritten</option>
    </select>
    <select name="mode" id="mode">
        <option value="standard">Standard</option>
        <option value="rapid">Rapid</option>
        <option value="elimination">Elimination</option>
    </select>
    <button type="submit">advanced</button>
</form> 
</body>
</html>