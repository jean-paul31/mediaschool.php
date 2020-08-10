<?php
require "../controller/db.php";


$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);  


    
    $reqMessage = $conn-> query('SELECT * FROM messages INNER JOIN users ON messages.user_id = users.id');
   
