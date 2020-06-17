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
    <h2>Details d'une commande </h2>
    <table>
        <tr>
            <th>Nom du produit</th>
            <th>Prix</th>
            <th>Quantité</th>
            <th></th>
        </tr>
        <?php foreach($order_details as $order_detail): ?>

        <tr>
            <th><?=  $order_detail['name'] ?></th>
            <th><?=  $order_detail['price'] ?></th>
            <th><?=  $order_detail['quantity'] ?></th>
        </tr>
        <?php endforeach; ?>

    </table>
</div>
</body>
</html>


