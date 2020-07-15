<?php 
session_start();

require "../controller/head.php";
require "header.php";
require "../controller/profil.controler.php";
require "../controller/editProfil.controler.php";




?>
    <div class="row">
        <div class="col-md-7 offset-2 profil">
            <div>
                <h2>Profil de <?php echo $userInfo['surname'] ?></h2>
                <br><br>
                <?php
                    if(!empty($userInfo['avatar']))
                    {   
                        ?>
                        <img src="assets/membres/avatars/<?php echo $userInfo['avatar'];?>" alt="" class="avatar" width="150px">
                        <?php
                    }
                ?>
                <br>
                nom : <?php echo $userInfo['name'] ?>
                <br>
                prenom : <?php echo $userInfo['surname'] ?>
                <br>
                mail : <?php echo $userInfo['mail'] ?>
                <br>
                <?php
            if(isset($_SESSION['id']) AND $userInfo['id'] == $_SESSION['id'])
            {
                ?>
                <a href="<?php echo "editProfile.php?id=" . $_SESSION['id'] ?>">Editer mon profil</a>
                <?php
            }
            if (isset($msg)) 
            {
                ?>
                <span class="text-danger"><?= $msg ?> </span>
                <?php
            }
        ?>
            </div>
        </div>
            <?php
            ?>
    </div>
    <?php 
    require "footer.php";
    ?>