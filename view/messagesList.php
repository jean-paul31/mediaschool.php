<?php
require "../controller/singleArticle.controler.php";
?>
<div class="row">
    <div class="col-md-3 offset-4 list">
        <?php
        while ($messageInfo = $reqMessage->fetch()) 
        {
            ?>
            <tr>
                <td>
                    <h2><a href="<?php echo "singleArticle.php?=" . $messageInfo['id']?> "  name="singleArticle" id="singleArticle"><?= $messageInfo['title'];?></a></h2>
                    <span><?= $messageInfo['createdAt'];?></span>
                </td>
            </tr>  
        <?php
        }
        ?>                  
        <a href="redaction.php">nouveau message</a>
    </div>
</div>