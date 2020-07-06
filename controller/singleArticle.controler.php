<?php
session_start();
require "../controller/db.php";
require "../controller/messageList.controler.php";
require "../controller/messageList.controler.php";



$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

$reqArticle = $conn-> query('SELECT * FROM messages inner JOIN users');
$reqArticle->execute(array());
$articleInfo = $reqArticle->fetch();
printf($articleInfo['id']) ;




    
    



    
    