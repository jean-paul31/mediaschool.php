<?php
require "db.php";


    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);   

    if (isset($_POST['formInscription'])) 
    {
        $name = htmlspecialchars($_POST['name']);
        $surname = htmlspecialchars($_POST['surname']);
        $mail = htmlspecialchars($_POST['mail']);
        $mdp = base64_encode($_POST['mdp']);
        $mdp2 = base64_encode($_POST['mdp2']);

       if(!empty($_POST['name']) AND !empty($_POST['surname']) AND !empty($_POST['mail']) AND !empty($_POST['mdp']) AND !empty($_POST['mdp2']))
       {
            $mdpLength = strlen($mdp);
            if (filter_var($mail, FILTER_VALIDATE_EMAIL)) 
            { 
                $reqmail = $conn -> prepare("SELECT * FROM users WHERE=?");
                $reqmail -> execute(array($mail));
                $mailExist = $reqmail -> rowCount();
                if($mailExist == 0)
                {
                    if ($mdpLength > 8) 
                    {
                        if ($mdp == $mdp2) 
                        {
                            $insertUsers = $conn->prepare("INSERT INTO users(name, surname, mail, mdp) VALUES (?, ?, ?, ?)");
                            $insertUsers -> execute(array($name, $surname, $mail, $mdp));
                            $erreur = "Votre compte a bien été créé !";
                            header('Location: signIn.php');

                        }
                        else
                        {
                        $erreur = "vos mots de passes ne correspondent pas !";
                        }
                    }
                    else
                    {
                    $erreur = "Votre mot de passe ne doit pas etre inferieur a 8 caracteres min !";
                    }
                }
                else
                {
                    $erreur = "Adresse mail deja utilisée!";
                }
            }
            else
            {
                $erreur = "Votre adresse mail n'est pas valide!";
            }
               
       }
       else
       {
            $erreur = "Tous les champs doivent etre complete";
       }
    }
