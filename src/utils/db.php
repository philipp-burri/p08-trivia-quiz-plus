<?php
if (!isset($_SESSION)) {
  session_start();
}

$db_host = getenv("DB_HOST");
$db_name = getenv("DB_NAME");
$db_user = getenv("DB_USER");
$db_pass = getenv("DB_PASSWORD");

try {
    $dbConnection = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
    $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo $e->getMessage();
}

function questionIdandIndex($type, $amount, $dbConnection) {
  $amount = 10;

  if (!isset($_SESSION['questionIds'])) {
      if ($type != 'mixed') {
          $query = "SELECT id FROM questions WHERE type = :type ORDER BY RAND() LIMIT :amount";
      } else {
          $query = "SELECT id FROM questions WHERE type != 'fail' ORDER BY RAND() LIMIT :amount";
      }
      $stmt = $dbConnection->prepare($query);
      $stmt->bindParam(':amount', $amount, PDO::PARAM_INT);
      if ($type != 'mixed') {
          $stmt->bindParam(':type', $type, PDO::PARAM_STR);
      }
      $stmt->execute();
      $questions = $stmt->fetchAll(PDO::FETCH_ASSOC);
      $questionIds = array_column($questions, 'id');
      $_SESSION['questionIds'] = $questionIds;
  }

  if (!isset($_SESSION['questionIndex'])) {
      $_SESSION['questionIndex'] = 0;
  }

  $questionIndex = $_SESSION['questionIndex'];
  $questionId = $_SESSION['questionIds'][$questionIndex];

  return [
      'questionIndex' => $questionIndex,
      'questionId' => $questionId,
      'questionIds' => $_SESSION['questionIds']
  ];
}

function singlequestionID($questionId, $dbConnection){
  if ($questionId != null){
    $query = "SELECT q.*, GROUP_CONCAT(a.id, ':', a.answer, ':', a.is_correct SEPARATOR '||') as answers 
              FROM questions q 
              LEFT JOIN answers a ON q.id = a.question_id 
              WHERE q.id = :questionId 
              GROUP BY q.id";
    $stmt = $dbConnection->prepare($query);
    $stmt->bindParam(':questionId', $questionId, PDO::PARAM_INT);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
    if ($result) {
      $answers = [];
      $answersData = explode('||', $result['answers']);
      foreach ($answersData as $answerData) {
        list($id, $answer, $is_correct) = explode(':', $answerData);
        $answers[] = [
          'id' => $id,
          'answer' => $answer,
          'is_correct' => $is_correct
        ];
      }
      $result['answers'] = $answers;
      unset($result['answers_string']);
    }
    
    return $result;
  }
}
