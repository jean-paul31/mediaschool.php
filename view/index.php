    <?php
    require "../controller/head.php";
    require "header.php";
   
	
    require "../controller/db.php";


//On essaie de se connecter
try
{
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);   
}
    /**
     *On capture les exceptions si une exception est lancée et on affiche
     *les informations relatives à celle-ci
     **/
catch(PDOException $e)
{
    echo "Erreur : " . $e->getMessage()."<br>";
    die;
}

    //on ferme la connection
    $conn = null;
    require "footer.php"
    ?>
