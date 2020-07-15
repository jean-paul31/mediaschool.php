<?php
session_start();

require "../controller/head.php";
require "header.php";
require "../controller/editProfil.controler.php";

?>
    <div class="row">
        <div class="col-md-7 offset-2 profil">
            <div>
                <h2>Editer mon profil</h2>
                <br>
                <form action="" method="POST" class="form-group" enctype="multipart/form-data">
                    <label for="newName">Nom:</label>
                    <input type="text" name="newName" id="newName" placeholder="name" class="form-control" value="<?php echo $user['name']; ?>"><br>
                    <label for="newSurname">Prénom:</label>
                    <input type="text" name="newSurname" id="newSurname" placeholder="surname" class="form-control" value="<?php echo $user['surname']; ?>"><br>
                    <label for="newMail">Adresse mail:</label>
                    <input type="email" name="newMail" id="newMail" placeholder="email" class="form-control" value="<?php echo $user['mail']; ?>"><br>
                    <label for="newMdp">Mot de passe:</label>
                    <input type="password" name="newMdp" id="newMdp" placeholder="mot de passe" class="form-control"><br>
                    <label for="newMdp2">vérification du mot de passe:</label>
                    <input type="password" name="newMdp2" id="newMdp2" placeholder="confirmation" class="form-control"><br>
                    <label for="avatar">photo de profil:</label><br>
                    <input type="file" name="avatar" id="avatar"><br><br>
                    <input type="submit" value="Mettre à jour mon profil !" class="btn btn-primary">
                </form>
                <?php
                if(isset($msg)){ 
                    ?>
                    <p class='text-danger'><?= $msg ?></p>
                    <?php
                        }
                    ?>
            </div>
        </div>
    </div>
<?php
require "footer.php";
?>