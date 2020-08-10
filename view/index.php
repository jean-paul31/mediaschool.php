<?php
session_start();
require "../controller/head.php";
require "../controller/connexion.php";
require "header.php";

if (isset($_GET['id'])) {
    require "messagesList.php";
}
else {
    $erreur = "vous devez etre connecté !"
    ?>
    <div class="row">
        <div class="col-md-4 offset-4 center-block  my-auto  erreur">
            <span><?= $erreur ?></span>
        </div>
    </div>
    <?php
}





require "footer.php";
