<?php
require "../controller/db.php";
require "../controller/messageList.controler.php";


if (isset($_GET['art_id'])) {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    
    $reqArticle = $conn->prepare('SELECT *FROM messages INNER JOIN users ON messages.user_id = users.id AND messages.m_id=?');
    $reqArticle->execute(array($_GET['art_id']));

    
}
else
{
    $erreur = "une erreur est survenue lors duchargement !";
}

    
    
  if (isset($_POST['erase'])) {
      $eraseArticle = $conn->prepare("DELETE FROM messages WHERE messages.m_id = ?");
      $eraseArticle->execute(array($_GET['id']));
      header("Location: index.php?id=" . $_SESSION['id']);
  }

 









    
    



    
    