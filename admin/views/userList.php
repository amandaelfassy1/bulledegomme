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
                    <th><?=  ($user['id']) ?> </th>
                    <th><?=  htmlspecialchars($user['last_name']) ?> </th>
                    <th> <?=  htmlspecialchars($user['first_name']) ?></a></th>
                    <th> <?=  htmlspecialchars($user['email']) ?></a></th>
                    <th><a class="modif" href="index.php?controller=users&action=edit&id=<?= $user['id'] ?>"> Modifier</a></th>
                    <th><a class="suppr" href="index.php?controller=users&action=delete&id=<?= $user['id'] ?>"> Supprimer</a></th>
                </tr>
            <?php endforeach; ?>
        </table>
        <button> <a href="index.php?controller=users&action=new"> Ajouter un utilisateur</a></button>
    </div>
</div>





