<?php
session_start();
require "../controller/db.php";
require "../controller/messageList.controler.php";




$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    
    
    $reqArticle = $conn->prepare('SELECT *FROM messages INNER JOIN users ON messages.user_id = users.id');
    $reqArticle->execute(array());
    $articleInfo = $reqArticle->fetch();  
    

  

 









    
    



    
    