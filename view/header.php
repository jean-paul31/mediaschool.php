<?php
// session_start();
require "../controller/header.control.php";
?>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="<?=$connexion?>">MEDIASCHOOL</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <?php
          if (!isset($_SESSION['id'])) {?>
            <a class="nav-link" href="signIn.php">Connexion</a>
            <?php
          }
          else
          {
            ?>
            <a class="nav-link" href="deconnexion.php">deconnexion</a>
            <?php
          }
        ?>
        
      </li>
      <li class="nav-item active">
      <?php
          if (isset($_SESSION['id'])) {?>
            <a class="nav-link" href="<?=$monCompte?>">Mon Compte</a>
            <?php
          }
        ?>
        
      </li>
    </ul>
  </div>
</nav>
<br>
<br>
<br>
