<?php 
require "../controller/db.php";
require "../controller/head.php";
require "header.php";


$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);  

if (isset($_GET['id']) AND $_GET['id'] > 0 ) 
{
     
    $getId = intval($_GET['id']);
    $reqUser = $conn-> prepare('SELECT * FROM users WHERE id = ?');
    $reqUser->execute(array($getId));
    $userInfo = $reqUser->fetch();

?>
    <div class="row">
        <div class="col-md-7 offset-3 profil">
            <div>
                <h2>Profil de <?php echo $userInfo['surname'] ?></h2>
                <br><br>
                nom = <?php echo $userInfo['name'] ?>
                <br>
                prenom = <?php echo $userInfo['surname'] ?>
                <br>
                mail = <?php echo $userInfo['mail'] ?>
                <br>
                <?php
            if(isset($_SESSION['id']) AND $userInfo['id'] == $_SESSION['id'])
            {
                ?>
                <a href="#">Editer mon profil</a>
                <a href="deconnexion.php">se déconnecter</a>
                <?php
            }
        ?>
            </div>
        </div>
 
    </div>
    <?php 
}
    require "footer.php";
    ?>