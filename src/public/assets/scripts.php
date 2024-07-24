<?php

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    // Zugriff verweigern oder den Benutzer umleiten
    header('HTTP/1.0 403 Forbidden');
    echo 'Direkter Zugriff nicht erlaubt';
    exit;
}


include dirname(dirname(__DIR__)). '/utils/db.php';
include dirname(dirname(__DIR__)). '/utils/ranked.php';


if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['send_ranking_simple'])) {
    ranked_simple($dbConnection);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['send_ranking_advanced'])) {
    echo '<pre>';
    print_r($_POST);
    echo '</pre>';
    ranked_advanced($dbConnection);
}

function prettyPrint($a){
    echo '<pre>';
    print_r($a);
    echo '</pre>';
}