<?php
require "../controller/commentaire.control.php";
?>


    <?php
            while ($commentInfo = $reqComment->fetch()){
                if ($commentInfo['message_id'] == $_GET['art_id']) {
                    ?>
                    <img src="assets/membres/avatars/<?= $commentInfo['avatar']?>" alt="" width="100px" height="100px">
                    <span><?= $commentInfo['surname']?></span>
                    <p><?= $commentInfo['c_texte']?></p><br><br>
        
                <?php   
                    } 
                    else
                    {
                        $erreur = "il y a eu un probleme !";
                    }
                }

    ?>


<form action="" method="post" class="form-group com form-inline">
    <div class="input-group">
        <input type="text" name="commentaire" id="commentaire" class="form-control">
        <span class="input-group-btn">
            <button type="submit" class="btn btn-secondary" name="com">commenter</button>
        </span>        
    </div>    
</form>