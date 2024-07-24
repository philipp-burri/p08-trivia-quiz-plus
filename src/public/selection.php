

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TriviaQuiz++ - Auswahl</title>
    <link rel="stylesheet" href="assets/css/selection.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link href="https://fonts.googleapis.com/css2?family=Bowlby+One+SC&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="../assets/js/main.js"></script>
</head>
<body>
  <?php include '../utils/header.php'; ?>
    <div class="selection-container">
    <!--     <h1 class="title">WÄHLE DEINE KATEGORIE</h1> -->
        <div class="card-container" id="categories">
            <div class="card" data-category="football">
                <div class="card-inner">
                    <i class="fas fa-futbol"></i>
                    <p>Football</p>
                </div>
            </div>
            <div class="card" data-category="history">
                <div class="card-inner">
                    <i class="fas fa-book"></i>
                    <p>History</p>
                </div>
            </div>
            <div class="card" data-category="animals">
                <div class="card-inner">
                    <i class="fas fa-paw"></i>
                    <p>Animals</p>
                </div>
            </div>
            <div class="card" data-category="geography">
                <div class="card-inner">
                    <i class="fas fa-globe"></i>
                    <p>Geography</p>
                </div>
            </div>
        </div>
        
        <div class="card-container" id="difficulties" style="display: none;">
            <div class="card" data-difficulty="easy">
                <div class="card-inner">
                    <p>Easy</p>
                </div>
            </div>
            <div class="card" data-difficulty="hard">
                <div class="card-inner">
                    <p>Hard</p>
                </div>
            </div>
        </div>
        
        <div class="card-container" id="modes" style="display: none;">
            <div class="card" data-mode="standard">
                <div class="card-inner">
                    <p>Standard</p>
                </div>
            </div>
            <div class="card" data-mode="rapid">
                <div class="card-inner">
                    <p>Rapid</p>
                </div>
            </div>
            <div class="card" data-mode="elimination">
                <div class="card-inner">
                    <p>Elimination</p>
                </div>
            </div>
        </div>
    </div>

    <form id="quizForm" action="questions.php" method="post">
        <input type="hidden" name="category" id="categoryInput">
        <input type="hidden" name="difficulty" id="difficultyInput">
        <input type="hidden" name="mode" id="modeInput">
    </form>

    
</body>
</html>