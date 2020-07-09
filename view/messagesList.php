<?php
require "../controller/singleArticle.controler.php";
?>
<div class="new">
    <a class="btn btn-primary add" href="redaction.php">+</a>
</div>
<div class="row">
    <div class="col-md-3 offset-4 list">
        <?php
        while ($messageInfo = $reqMessage->fetch()) 
        {$articleId = "singleArticle.php?id=" . $_SESSION['id'] . "&art_id=" . $messageInfo['m_id'];
            ?>
            <tr>
                <td>
                    <h2><a href="<?=$articleId?> "  name="singleArticle" id="singleArticle"><?= $messageInfo['title'];?></a></h2>
                    <span><?= $messageInfo['createdAt'];?></span>
                </td>
            </tr>  
        <?php
        }
        ?>                  
    </div>
</div>
