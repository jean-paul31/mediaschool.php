
<div class="row">
    <div class="col-md-3 offset-4 message">
        <form action="" method="POST" class="form-group">
            <label for="title">Votre titre:</label>
            <input type="text" name="title" id="title" class="form-control"><br>
            <label for="content">Votre message:</label>
            <textarea name="content" id="content"  class="form-control" cols="30" rows="10" placeholder="contenu de l'article"></textarea><br>
            <input type="submit" value="Envoyer l'article" class="btn btn-primary">
        </form>
    </div>
</div>


<?php
require "footer.php";