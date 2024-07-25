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
    $points = $_POST['points'] ?? 101;
    $time = $_POST['time'] ?? 140;
    $animals = isset($_POST['animals']) ? (int) $_POST['animals'] : 1;
    $geography = isset($_POST['geography']) ? (int) $_POST['geography'] : 0;
    $history = isset($_POST['history']) ? (int) $_POST['history'] : 0;
    $beginner = isset($_POST['beginner']) ? (int) $_POST['beginner'] : 1;
    $advanced = isset($_POST['advanced']) ? (int) $_POST['advanced'] : 0;

    // Bestimmen Sie die Kategorie und Schwierigkeitsstufe
    $category = $animals ? 'animals' : ($geography ? 'geography' : ($history ? 'history' : ''));
    $difficulty = $beginner ? 'beginner' : ($advanced ? 'advanced' : '');

    if ($category && $difficulty) {
        // Überprüfen, ob die Tabelle bereits 10 Einträge hat für diese Kategorie und Schwierigkeit
        $sqlCount = "SELECT COUNT(*) FROM ranking_advanced
                     WHERE $category = 1 AND $difficulty = 1";
        $stmtCount = $dbConnection->query($sqlCount);
        $count = $stmtCount->fetchColumn();

        if ($count >= 10) {
            // Holen Sie sich den niedrigsten Punktestand und höchste Zeit für diesen Punktestand
            $sqlMaxTime = "SELECT points, MAX(time) AS max_time
                           FROM ranking_advanced
                           WHERE $category = 1 AND $difficulty = 1
                           GROUP BY points
                           ORDER BY points ASC, max_time DESC
                           LIMIT 1";
            $stmtMaxTime = $dbConnection->query($sqlMaxTime);
            $max = $stmtMaxTime->fetch(PDO::FETCH_ASSOC);

            $maxPoints = $max['points'];
            $maxTime = $max['max_time'];

            // Wenn der neue Eintrag bessere Punkte oder gleiche Punkte aber bessere Zeit hat
            if ($points > $maxPoints || ($points == $maxPoints && $time < $maxTime)) {
                // Löschen Sie den Eintrag mit der höchsten Zeit für den niedrigsten Punktestand
                $sqlDelete = "DELETE FROM ranking_advanced 
                              WHERE points = :maxPoints AND time = :maxTime 
                              AND $category = 1 AND $difficulty = 1 
                              LIMIT 1";
                $stmtDelete = $dbConnection->prepare($sqlDelete);
                $stmtDelete->bindParam(':maxPoints', $maxPoints, PDO::PARAM_INT);
                $stmtDelete->bindParam(':maxTime', $maxTime, PDO::PARAM_INT);
                $stmtDelete->execute();

                // Fügen Sie den neuen Eintrag ein
                $sqlInsert = "INSERT INTO ranking_advanced (name, points, time, animals, geography, history, beginner, advanced) 
                              VALUES (:name, :points, :time, :ani, :geo, :his, :beg, :adv)";

                $stmtInsert = $dbConnection->prepare($sqlInsert);

                $stmtInsert->bindParam(':name', $name, PDO::PARAM_STR);
                $stmtInsert->bindParam(':points', $points, PDO::PARAM_INT);
                $stmtInsert->bindParam(':time', $time, PDO::PARAM_INT);
                $stmtInsert->bindParam(':ani', $animals, PDO::PARAM_INT);
                $stmtInsert->bindParam(':geo', $geography, PDO::PARAM_INT);
                $stmtInsert->bindParam(':his', $history, PDO::PARAM_INT);
                $stmtInsert->bindParam(':beg', $beginner, PDO::PARAM_INT);
                $stmtInsert->bindParam(':adv', $advanced, PDO::PARAM_INT);

                $stmtInsert->execute();
            }
        } else {
            // Wenn die Tabelle weniger als 10 Einträge hat für diese Kategorie und Schwierigkeit, fügen Sie den neuen Eintrag immer hinzu
            $sqlInsert = "INSERT INTO ranking_advanced (name, points, time, animals, geography, history, beginner, advanced) 
                          VALUES (:name, :points, :time, :ani, :geo, :his, :beg, :adv)";

            $stmtInsert = $dbConnection->prepare($sqlInsert);

            $stmtInsert->bindParam(':name', $name, PDO::PARAM_STR);
            $stmtInsert->bindParam(':points', $points, PDO::PARAM_INT);
            $stmtInsert->bindParam(':time', $time, PDO::PARAM_INT);
            $stmtInsert->bindParam(':ani', $animals, PDO::PARAM_INT);
            $stmtInsert->bindParam(':geo', $geography, PDO::PARAM_INT);
            $stmtInsert->bindParam(':his', $history, PDO::PARAM_INT);
            $stmtInsert->bindParam(':beg', $beginner, PDO::PARAM_INT);
            $stmtInsert->bindParam(':adv', $advanced, PDO::PARAM_INT);

            $stmtInsert->execute();
        }
    }
    
    header('Location: /result.php');
    
}
