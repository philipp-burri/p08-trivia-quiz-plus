<?php

/* if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    // Zugriff verweigern oder den Benutzer umleiten
    header('HTTP/1.0 403 Forbidden');
    echo 'Direkter Zugriff nicht erlaubt';
    exit;
} */


include dirname(dirname(__DIR__)). '/utils/db.php';
include dirname(dirname(__DIR__)). '/utils/ranked.php';


if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['category']) && isset($_POST['difficulty']) && (isset($_POST['mode']))) {
    $_SESSION['category']= $_POST['category'];
    $_SESSION['difficulty']= $_POST['difficulty'];
    $_SESSION['mode']= $_POST['mode'];
    header('Location: /rankeddisplay.php');
}


/* if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['send_ranking_simple'])) {
    rankedSimple($dbConnection, $name, $points, $time);
} */

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['send_ranking_advanced'])) {
    rankedAdvanced($dbConnection, $name, $points, $time, $animals, $geography, $history, $football, $easy, $hard, $standard, $rapid, $elimination, $category, $difficulty, $mode);
    header('Location: /rankeddisplay.php');
}


