<?php 

$host = 'localhost';
$db = 'mvc';
$user = 'root';
$password = 'root';

$url = 'mysql:host=' . $host . ';dbname=' . $db . ';charset=utf8';

try{
    $pdo = new PDO($url, $user, $password);
} catch(PDOException $e){
    print_r($e->getMessage());
}

?>