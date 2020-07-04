<?php
require "../controller/db.php";

$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);  

if (isset($_GET['id']) AND $_GET['id'] > 0 ) 
{
     
    $getId = intval($_GET['id']);
    $reqUser = $conn-> prepare('SELECT * FROM users WHERE id = ?');
    $reqUser->execute(array($getId));
    $userInfo = $reqUser->fetch();
}