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
        <h3>ici la liste complète des produits : </h3>
    </div>
    <div>
        <table>
                <tr>
                    <?php foreach($products as $product): ?>
                    <th><?=  htmlspecialchars($product['name']) ?></th>
                    <th><a class="suppr" href="index.php?controller=products&action=delete&id=<?= $product['id'] ?>"> supprimer</a></th>
                    <th><a class="modif" href="index.php?controller=products&action=edit&id=<?= $product['id'] ?>">modifier</a></th>
                </tr>
            <?php endforeach; ?>
        </table>
        <button> <a href="index.php?controller=products&action=new"> Ajouter une figurine</a></button>
    </div>
</div>