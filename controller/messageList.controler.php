<?php
require "../controller/db.php";

$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);  

    
    $reqMessage = $conn-> query('SELECT * FROM messages');
    $reqMessage->execute(array());

    
   
    
    

   
    
