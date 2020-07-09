<?php
require "../controller/connexion.php";
$connexion;
$monCompte;

if (isset($_GET['id'])) {
    $connexion = "index.php?id=" . $_SESSION['id'];
    $monCompte =  "profil.php?id=" . $_SESSION['id'];
}
else {
    $connexion = "signIn.php";
    $monCompte = "signIn.php";
}