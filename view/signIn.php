<?php 
require "../controller/head.php";
require "header.php";
?>
    <div class="col-md-3 offset-4">
        <form action="" method="post" class="form-group">
            <div>
                <label for="email">email:</label>
                <input type="text" name="email" id="email" class="form-control">
            </div>
            <div>
                <label for="password">mot de passe:</label>
                <input type="password" name="password" id="pass" class="form-control">
            </div>
            <div>
                <button type="submit" class="btn btn-submit">connexion</button>
            </div>
            <span>Vous n'avez pas encore de compte? <a href="http://localhost/mediaschool.php/view/signUp.php"> Créer un compte</a></span>
        </form>
        
    </div>
    <?php require "footer.php"?>