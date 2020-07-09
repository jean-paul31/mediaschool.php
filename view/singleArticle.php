<?php
session_start();
require "../controller/head.php";
require "header.php";
require "../controller/singleArticle.controler.php";
require "../controller/messageList.controler.php";
require "../controller/profil.controler.php";
require "../controller/header.control.php";


//vérifie que "art_id" existe bien dans l'URL
if (isset($_GET['art_id'])) {
    //itére le contenu HTML présent par rapport au tableau $articleInfo
    while ($articleInfo = $reqArticle->fetch()) 
    {
        ?>
        <button class="btn btn-default" name="back"><a href="<?=$connexion?>"><i class="fas fa-arrow-circle-left"></i></a></button>
        <div class="row">            
            <div class="col-md-7 offset-2 singlePost">
                <br>    
                <div class="pseudo">
                    <img src="assets/membres/avatars/<?= $articleInfo['avatar'];?>" alt="" width="100px" height="100px">
                    <span><?= $articleInfo['surname'];?></span>
                </div>        
                <h2><?= $articleInfo['title'];?></h2>
                <span><?= $articleInfo['createdAt'];?></span>        
                <p><?= $articleInfo['texte'];?></p>     
                <br><br>
                <div>
                    <?php require "commentaires.php"; ?> <!--integre la partie commentaires-->
                </div>
            </div>
        </div>
    <?php
    }    
}
require "footer.php";
