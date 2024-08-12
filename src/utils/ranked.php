<?php
if (!isset($_SESSION)) {
    session_start();
}

$name = $_POST['name'] ?? 'NoName';
$points = $_SESSION['score'];
$time = $_SESSION['quiztime'];
$animals = (isset($_SESSION['category']) && $_SESSION['category'] === 'animals') ? 1 : 0;
$geography = (isset($_SESSION['category']) && $_SESSION['category'] === 'geography') ? 1 : 0;
$history = (isset($_SESSION['category']) && $_SESSION['category'] === 'history') ? 1 : 0;
$football = (isset($_SESSION['category']) && $_SESSION['category'] === 'football') ? 1 : 0;
$easy = (isset($_SESSION['difficulty']) && $_SESSION['difficulty'] === 'easy') ? 1 : 0;
$hard = (isset($_SESSION['difficulty']) && $_SESSION['difficulty'] === 'hard') ? 1 : 0;
$standard = (isset($_SESSION['mode']) && $_SESSION['mode'] === 'standard') ? 1 : 0;
$rapid = (isset($_SESSION['mode']) && $_SESSION['mode'] === 'rapid') ? 1 : 0;
$elimination = (isset($_SESSION['mode']) && $_SESSION['mode'] === 'elimination') ? 1 : 0;


$category = $animals ? 'animals' : ($geography ? 'geography' : ($history ? 'history' : ($football ? 'football' : '')));
$difficulty = $easy ? 'easy' : ($hard ? 'hard' : '');
$mode= $standard ? 'standard': ($rapid ? 'rapid' : ($elimination ? 'elimination' : ''));


function rankedAdvanced($dbConnection, $name, $points, $time, $animals, $geography, $history, $football, $easy, $hard, $standard, $rapid, $elimination, $category, $difficulty, $mode) {



    if ($category && $difficulty && $mode) {
        
        $sqlCount = "SELECT COUNT(*) FROM ranking_advanced
                     WHERE $category = 1 AND $difficulty = 1 AND $mode = 1";
        $stmtCount = $dbConnection->query($sqlCount);
        $count = $stmtCount->fetchColumn();

        if ($count >= 10) {
            
            $sqlMaxTime = "SELECT points, MAX(time) AS max_time
                           FROM ranking_advanced
                           WHERE $category = 1 AND $difficulty = 1 AND $mode = 1
                           GROUP BY points
                           ORDER BY points ASC, max_time DESC
                           LIMIT 1";
            $stmtMaxTime = $dbConnection->query($sqlMaxTime);
            $max = $stmtMaxTime->fetch(PDO::FETCH_ASSOC);

            $maxPoints = $max['points'];
            $maxTime = $max['max_time'];

          
            if ($points > $maxPoints || ($points == $maxPoints && $time < $maxTime)) {
                
                $sqlDelete = "DELETE FROM ranking_advanced 
                              WHERE points = :maxPoints AND time = :maxTime 
                              AND $category = 1 AND $difficulty = 1 AND $mode = 1
                              LIMIT 1";
                $stmtDelete = $dbConnection->prepare($sqlDelete);
                $stmtDelete->bindParam(':maxPoints', $maxPoints, PDO::PARAM_INT);
                $stmtDelete->bindParam(':maxTime', $maxTime, PDO::PARAM_INT);
                $stmtDelete->execute();

               
                $sqlInsert = "INSERT INTO ranking_advanced (name, points, time, animals, geography, history, football, easy, hard, standard, rapid, elimination) 
                VALUES (:name, :points, :time, :ani, :geo, :his, :foot, :easy, :hard, :stand, :rapid, :eli)";
            }
        } else {
            
            $sqlInsert = "INSERT INTO ranking_advanced (name, points, time, animals, geography, history, football, easy, hard, standard, rapid, elimination) 
                VALUES (:name, :points, :time, :ani, :geo, :his, :foot, :easy, :hard, :stand, :rapid, :eli)";
        }

        $stmtInsert = $dbConnection->prepare($sqlInsert);

        $stmtInsert->bindParam(':name', $name, PDO::PARAM_STR);
        $stmtInsert->bindParam(':points', $points, PDO::PARAM_INT);
        $stmtInsert->bindParam(':time', $time, PDO::PARAM_INT);
        $stmtInsert->bindParam(':ani', $animals, PDO::PARAM_INT);
        $stmtInsert->bindParam(':geo', $geography, PDO::PARAM_INT);
        $stmtInsert->bindParam(':his', $history, PDO::PARAM_INT);
        $stmtInsert->bindParam(':foot', $football, PDO::PARAM_INT);
        $stmtInsert->bindParam(':easy', $easy, PDO::PARAM_INT);
        $stmtInsert->bindParam(':hard', $hard, PDO::PARAM_INT);
        $stmtInsert->bindParam(':stand', $standard, PDO::PARAM_INT);
        $stmtInsert->bindParam(':rapid', $rapid, PDO::PARAM_INT);
        $stmtInsert->bindParam(':eli', $elimination, PDO::PARAM_INT);


        $stmtInsert->execute();
    }
    
    header('Location: /result.php');
    
}

function displayRankedAndvanced($dbConnection, $category, $difficulty, $mode){

    $sqlDisplay= "SELECT name, points, time
                    FROM ranking_advanced
                    WHERE $category = 1 AND $difficulty = 1 AND $category = 1 AND $difficulty = 1 AND $mode = 1
                    ORDER BY points DESC, time ASC";

    try {
        $stmt = $dbConnection->prepare($sqlDisplay);
        $stmt->execute();
        $displayRankedAdvanced = $stmt->fetchAll(PDO::FETCH_ASSOC);

    } catch (PDOException $e) {
        echo 'Fehler bei der Abfrage: ' . $e->getMessage();
    }

    return $displayRankedAdvanced;
}
