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
        <h3>ici la liste complète des catégories : </h3>
    </div>
    <div>
        <table>
            <?php foreach($categories as $category): ?>
                <tr>
                    <th><?=  htmlspecialchars($category['name']) ?> </th>
                    <th><a class="suppr" href="index.php?controller=categories&action=delete&id=<?= $category['id'] ?>"> Supprimer</a></th>
                    <th><a class="modif" href="index.php?controller=categories&action=edit&id=<?= $category['id'] ?>"> Modifier</a></th>
                </tr>
            <?php endforeach; ?>
        </table>
        <button><a href="index.php?controller=categories&action=new"> Ajouter une catégorie</a></button><br><br>
    </div>
</div>





