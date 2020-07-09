<?php


require "db.php";

$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);  



if (isset($_POST['formRedaction'])) {
    
    if (!empty($_POST['title']) AND !empty($_POST['content'])) {
        $author = $_SESSION['id'];
        $date = date("D, d M Y H:i:s");
        $title = htmlspecialchars($_POST['title']);
        $content = htmlspecialchars($_POST['content']);
        $insertMessage = $conn->prepare("INSERT INTO messages(user_id, createdAt, title, texte) VALUES (?, ?, ?, ?)");
        $insertMessage->execute(array($author, $date, $title, $content));
        header("Location: index.php?id=" . $_SESSION['id']);

    }
    else
    {
    $erreur = "Une erreur est survenue !";
    }
}


