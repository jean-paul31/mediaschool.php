<?php
require "../controller/head.php";
require "header.php";
require "../controller/singleArticle.controler.php";
require "../controller/messageList.controler.php";
require "../controller/profil.controler.php";


if (isset($_GET['id']) AND $_GET['id'] == $articleInfo['id']) {?>

<div class="row">
    <div class="col-md-7 offset-2 singlePost">
    <br>    
    <div class="pseudo">
        <img src="assets/membres/avatars/<?= $articleInfo['avatar'];?>" alt="" width="100px" height="100px">
        <span><?= $articleInfo['surname'];?></span>
    </div>        
        <h2><?= $messageInfo['title'];?></h2>
        <span><?= $messageInfo['createdAt'];?></span>        
        <p><?= $messageInfo['texte'];?></p>       
    </div>
</div>
<?php
}
print $messageInfo['id'];
require "footer.php";