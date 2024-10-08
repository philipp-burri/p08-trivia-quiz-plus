<?php   if (!isset($_SESSION)) {
        session_start();
}
        session_destroy();
        session_start();
?>

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TriviaQuiz++</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/index.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="icon" href="/assets/img/faviconQ.png" type="image/x-icon">
</head>
<body>

    <div class="index-container">
        <h1 class="title">TRIVIAQUIZ</h1>
        <a href="selection.php" class="start-button">START QUIZ</a>
    </div>

    <div class="area" >
            <ul class="circles">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
            </ul>
    </div>
    <script>
document.addEventListener('DOMContentLoaded', (event) => {
    const circles = document.querySelectorAll('.circles li');
    
    circles.forEach(circle => {
        circle.addEventListener('click', function() {
            this.style.display = 'none';
        });
    });
});
</script>
</body>
</html>
</body>

</html>