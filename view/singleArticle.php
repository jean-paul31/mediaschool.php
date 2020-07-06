<?php
require "../controller/head.php";
require "header.php";
require "../controller/singleArticle.controler.php";
require "../controller/messageList.controler.php";
require "../controller/profil.controler.php";

?>

<div class="row">
    <div class="col-md-7 offset-2 singlePost">    
    <div class="pseudo">
        <img src="assets/membres/avatars/<?php echo $articleInfo['avatar'];?>" alt="" width="100px" height="100px">
        <span><?php echo $articleInfo['surname'];?></span>
    </div>        
        <h2><?php echo $articleInfo['title'];?></h2>
        <span><?php echo $articleInfo['createdAt'];?></span>        
        <p><?php echo $articleInfo['texte'];?></p>       
    </div>
</div>
<?php

require "footer.php";