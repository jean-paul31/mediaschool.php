<?php
session_start();
require "../controller/head.php";
require "../controller/connexion.php";
require "header.php";

if (isset($_GET['id'])) {
    require "messagesList.php";
}
else {
    $erreur = "vous devez etre connecté pour voir les messages !"
    ?>
    <div class="row">
        <div class="col-md-7 offset-2 erreur">
            <span><?= $erreur ?></span>
        </div>
    </div>
    <?php
}





require "footer.php";
