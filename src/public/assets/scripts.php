<?php

/* if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    // Zugriff verweigern oder den Benutzer umleiten
    header('HTTP/1.0 403 Forbidden');
    echo 'Direkter Zugriff nicht erlaubt';
    exit;
} */


include dirname(dirname(__DIR__)). '/utils/db.php';
include dirname(dirname(__DIR__)). '/utils/ranked.php';


if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['category']) && isset($_POST['level'])) {
    $_SESSION['category']= $_POST['category'];
    $_SESSION['level']= $_POST['level'];
    header('Location: /rankeddisplay.php');
}


if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['send_ranking_simple'])) {
    rankedSimple($dbConnection, $name, $points, $time);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['send_ranking_advanced'])) {
    echo '<pre>';
    print_r($_POST);
    echo '</pre>';
    rankedAdvanced($dbConnection, $name, $points, $time, $animals, $geography, $history, $beginner, $advanced);
}

function prettyPrint($a){
    echo '<pre>';
    print_r($a);
    echo '</pre>';
}