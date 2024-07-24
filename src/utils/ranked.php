<?php

function ranked_simple($dbConnection) {
    $name = $_POST['name'] ?? 'Test';
    $points = $_POST['points'] ?? 10;
    $time = $_POST['time'] ?? 165;


    try {
        $sqlCount = "SELECT COUNT(*) FROM ranking_simple";
        $stmtCount = $dbConnection->query($sqlCount);
        $count = $stmtCount->fetchColumn();

        if ($count >= 10) {
            $sqlMin = "SELECT MIN(points) AS min_points, MAX(time) AS max_time FROM ranking_simple";
            $stmtMin = $dbConnection->query($sqlMin);
            $min = $stmtMin->fetch(PDO::FETCH_ASSOC);

            $minPoints = $min['min_points'];
            $maxTime = $min['max_time'];

            // Wenn der neue Eintrag bessere Punkte oder gleiche Punkte aber bessere Zeit hat
            if ($points > $minPoints || ($points == $minPoints && $time < $maxTime)) {
                // Löschen Sie den Eintrag mit der niedrigsten Punktzahl oder der höchsten Zeit
                $sqlDelete = "DELETE FROM ranking_simple WHERE points = :minPoints AND time = :minTime LIMIT 1";
                $stmtDelete = $dbConnection->prepare($sqlDelete);
                $stmtDelete->bindParam(':minPoints', $minPoints, PDO::PARAM_INT);
                $stmtDelete->bindParam(':minTime', $maxTime, PDO::PARAM_INT);
                $stmtDelete->execute();

                $sqlInsert = "INSERT INTO ranking_simple (name, points, time) 
                VALUES (:name, :points, :time)";

                $stmtInsert = $dbConnection->prepare($sqlInsert);

                $stmtInsert->bindParam(':name', $name, PDO::PARAM_STR);
                $stmtInsert->bindParam(':points', $points, PDO::PARAM_INT);
                $stmtInsert->bindParam(':time', $time, PDO::PARAM_INT);

                $stmtInsert->execute();
            }
        }else {
            $sqlInsert = "INSERT INTO ranking_simple (name, points, time) 
            VALUES (:name, :points, :time)";

            $stmtInsert = $dbConnection->prepare($sqlInsert);

            $stmtInsert->bindParam(':name', $name, PDO::PARAM_STR);
            $stmtInsert->bindParam(':points', $points, PDO::PARAM_INT);
            $stmtInsert->bindParam(':time', $time, PDO::PARAM_INT);

            $stmtInsert->execute();
        }
        
    } catch (PDOException $e) {
        echo 'Fehler beim Befüllen der Tabelle: ' . $e->getMessage();
    }

    header('Location: /result.php');
}

function ranked_advanced($dbConnection) {

    $name = $_POST['name'] ?? 'Test';
    $points = $_POST['points'] ?? 100;
    $time = $_POST['time'] ?? 166;
    $animals = 1;
    $geography = 0;
    $history = 0;
    $beginner = 1;
    $advanced = 0;

    $sql = "INSERT INTO ranking_advanced (name, points, time, animals, geography, history, beginner, advanced) 
    VALUES (:name, :points, :time, :ani, :geo, :his, :beg, :adv)";

try {
        $stmt = $dbConnection->prepare($sql);


        $stmt->bindParam(':name', $name, PDO::PARAM_STR);
        $stmt->bindParam(':points', $points, PDO::PARAM_INT);
        $stmt->bindParam(':time', $time, PDO::PARAM_INT);
        $stmt->bindParam(':ani', $animals, PDO::PARAM_INT);
        $stmt->bindParam(':geo', $geography, PDO::PARAM_INT);
        $stmt->bindParam(':his', $history, PDO::PARAM_INT);
        $stmt->bindParam(':beg', $beginner, PDO::PARAM_INT);
        $stmt->bindParam(':adv', $advanced, PDO::PARAM_INT);

        $stmt->execute();
    } catch (PDOException $e) {
        echo 'Fehler beim Befüllen der Tabelle: ' . $e->getMessage();
    }

    header('Location: /result.php');
}



?>