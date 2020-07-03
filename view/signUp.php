<?php 
require "../controller/head.php"; 
require "header.php";
?>

<div class="col-md-3 offset-4">
    <form action="" method="post" class="form-group">
        <div>
            <label for="name">Nom:</label>
            <input type="text" name="name" id="name" class="form-control">
        </div>
        <div>
            <label for="surname">prénom:</label>
            <input type="text" name="surname" id="surname" class="form-control">
        </div>
        <div>
            <label for="email">email:</label>
            <input type="text" name="email" id="email" class="form-control">
        </div>
        <div>
            <label for="password">mot de passe:</label>
            <input type="password" name="password" id="pass" class="form-control">
        </div>
        <div>
            <label for="password">vérification:</label>
            <input type="password" name="password" id="pass" class="form-control">
        </div>
        <br>
        <div>
            <button type="submit" class="btn btn-primary">Créer mon compte</button>
        </div>
    </form>
</div>
