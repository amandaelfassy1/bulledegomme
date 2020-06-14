<?php require ('partials/header.php'); ?>
<?php require 'partials/head_assets.php'; ?>

<?php require ('partials/menu.php'); ?>

<?php if(isset($_SESSION['messages'])): ?>
    <div>
        <?php foreach($_SESSION['messages'] as $message): ?>
            <?= $message ?><br>
        <?php endforeach; ?>
    </div>
<?php endif; ?>
<div class="content">
    <div>
        <h3>ici la liste complète des utilisateurs : </h3>
    </div>
    <div>
        <table>
            <?php foreach($users as $user): ?>
                <tr>
                    <th><?=  htmlspecialchars($user['last_name']) ?> </th>
                    <th><a href="index.php?controller=users&action=delete&id=<?= $user['id'] ?>"> Supprimer</a></th>
                    <th><a href="index.php?controller=users&action=edit&id=<?= $user['id'] ?>"> Modifier</a></th>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
</div>





