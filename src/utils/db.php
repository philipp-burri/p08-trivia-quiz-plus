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

function prettyPrint($a){
  echo '<pre>';
  print_r($a);
  echo '</pre>';
}

function questionIdandIndex($category, $dbConnection, $mode = 'standard', $level = 1) {
  if ($mode === 'elimination') {
      $singleChoiceCount = 10;
      $query = "SELECT id FROM questions WHERE type = :category AND is_multi = 0 AND level = :level ORDER BY RAND() LIMIT :singleChoiceCount";
      
      $stmt = $dbConnection->prepare($query);
      $stmt->bindParam(':category', $category, PDO::PARAM_STR);
      $stmt->bindParam(':level', $level, PDO::PARAM_INT);
      $stmt->bindParam(':singleChoiceCount', $singleChoiceCount, PDO::PARAM_INT);
  } else {
      $multipleChoiceCount = 2;
      $singleChoiceCount = 8;
      $query = "
          (SELECT id FROM questions WHERE type = :category AND is_multi = 1 AND level = :level ORDER BY RAND() LIMIT :multipleChoiceCount)
          UNION ALL
          (SELECT id FROM questions WHERE type = :category AND is_multi = 0 AND level = :level ORDER BY RAND() LIMIT :singleChoiceCount)
      ";
      
      $stmt = $dbConnection->prepare($query);
      $stmt->bindParam(':category', $category, PDO::PARAM_STR);
      $stmt->bindParam(':level', $level, PDO::PARAM_INT);
      $stmt->bindParam(':multipleChoiceCount', $multipleChoiceCount, PDO::PARAM_INT);
      $stmt->bindParam(':singleChoiceCount', $singleChoiceCount, PDO::PARAM_INT);
  }
  
  $stmt->execute();
  $questionIds = $stmt->fetchAll(PDO::FETCH_COLUMN);
  shuffle($questionIds);
  
  return [
      'questionIds' => $questionIds,
      'questionIndex' => 0
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
