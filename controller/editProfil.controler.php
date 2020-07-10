<?php

require "../controller/db.php";
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

if (isset($_SESSION['id'])) {

    $reqUser = $conn->prepare("SELECT * FROM users WHERE i=?");
    $reqUser->execute(array($_SESSION['id']));
    $user = $reqUser->fetch();

    if (isset($_POST['newSurname']) AND !empty($_POST['newSurname']) AND $_POST['newSurname'] != $user['name']) {
        $newSurname = htmlspecialchars($_POST['newSurname']);
        $insertSurname = $conn->prepare("UPDATE users SET surname = ? WHERE id = ?");
        $insertSurname->execute(array($newSurname, $_SESSION['id']));
        header('Location: profil.php?id=' . $_SESSION['id']);
    }
    if (isset($_POST['newName']) AND !empty($_POST['newName']) AND $_POST['newName'] != $user['SURname']) {
        $newName = htmlspecialchars($_POST['newName']);
        $insertName = $conn->prepare("UPDATE users SET name = ? WHERE id = ?");
        $insertName->execute(array($newName, $_SESSION['id']));
        header('Location: profil.php?id=' . $_SESSION['id']);
    }
    if (isset($_POST['newMail']) AND !empty($_POST['newMail']) AND $_POST['newMail'] != $user['mail']) {
        $newMail = htmlspecialchars($_POST['newMail']);
        $insertMail = $conn->prepare("UPDATE users SET mail = ? WHERE id = ?");
        $insertMail->execute(array($newMail, $_SESSION['id']));
        header('Location: profil.php?id=' . $_SESSION['id']);
    }
    if (isset($_POST['newMdp']) AND !empty($_POST['newMdp']) AND isset($_POST['newMdp2']) AND !empty($_POST['newMdp2'])) {
        $mdp = base64_encode($_POST['newMdp']);
        $mdp2 = base64_encode($_POST['newMpd2']);
        if ($mdp1 == $mdp2) {
            $insertMdp = $conn->prepare("UPDATE users SET mdp = ? WHERE id = ?");
            $insertMdp->execute(array($mdp, $_SESSION['id']));
            header('Location: profil.php?id=' . $_SESSION['id']);
        }
        else
        {
            $msg = "Vos 2 mots de passe ne correspondent pas !";
        }
        
    }

    if (isset($_FILES['avatar']) AND !empty($_FILES['avatar']['name'])) {
        $tailleMax = 2097152;
        if ($_FILES['avatar']['size']<=$tailleMax) 
        {
                $nomDuFichier = $_POST['avatar'];
                $whachName = preg_replace('~[^\\pL\d]+~u', '-', $nomDuFichier);
                $whachName = trim($whachName, '-');
                // $whachName = iconv('utf-8', 'us-ascii//TRANSLIT', $whachName);
                $whachName = strtolower($whachName);
                $cleanName = preg_replace('~[^-\w]+~', '', $whachName);
                $extension = substr(strrchr($_FILES['avatar']['name'], "."), 1); 
                $pathimg = "assets/membres/avatars/" . $cleanName . "." . $extension;
                $resultat = move_uploaded_file($_FILES['avatar']['tmp_name'], $pathimg);
                if ($resultat) 
                {
                    $updateAvatar = $conn->prepare('UPDATE users SET avatar = :avatar WHERE id = :id');
                    $updateAvatar->execute(array(
                    'avatar' => $cleanName . "." . $extension, 
                    'id' => $_SESSION['id']
                    ));
                    $msg = "Le fichier à bien été uploadé!";
                }
                else 
                {
                    $msg = "Il y a eu un probleme lors du chargement";
                }
        }
        else
        {
            $msg = "Votre photo de profil ne doit pas dépasser 2 Mo";
        }
    }
} 
else 
{
    header("Location: editProfile.php");
}