<?php

require_once "db.php";

try {

    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

    if (isset($_POST['connexion'])) {
        $mailConnect = htmlspecialchars($_POST['mailConnect']);
        $mdpConnect = base64_encode(htmlspecialchars($_POST['mdpConnect']));

        if (!empty($mailConnect) and !empty($mdpConnect)) {
            $reqUser = $conn->prepare("SELECT * FROM users WHERE mail = ? AND mdp = ?");
            $reqUser->execute(array($mailConnect, $mdpConnect));
            $userExist = $reqUser->rowCount();
            if ($userExist == 1) {
                $userinfo = $reqUser->fetch();
                $_SESSION['id'] = $userinfo['id'];
                $_SESSION['name'] = $userinfo['name'];
                $_SESSION['mail'] = $userinfo['mail'];
                $_SESSION['admin'] = $userinfo['admin'];
                header("Location: index.php?id=" . $_SESSION['id']);
            } else {
                $erreur = "Mauvais mail ou mot de passe !";
            }
        } else {
            $erreur = "Tous les champs doivent être complétés !";
        }
    }
} catch (\Throwable $th) {
    echo $th;
}