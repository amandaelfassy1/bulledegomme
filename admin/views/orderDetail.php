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
    <h3>Information de l'utilisateur</h3>
    <table>
        <tr>
            <th>Nom </th>
            <th>Prenom</th>
            <th>Adresse</th>
        </tr>
        <tr>
            <th><?=  htmlspecialchars($order_user_info['first_name']) ?></th>
            <th><?= htmlspecialchars($order_user_info['last_name']) ?></th>
            <th><?= htmlspecialchars($order_user_info['delivery_address']) ?></th>
        </tr>
    </table>
<br>
    <h2>Details de la commande </h2>

    <table>
        <tr>
            <th>Nom du produit</th>
            <th>Prix</th>
            <th>Quantité</th>
            <th>Total</th>
        </tr>
        <?php foreach($order_details as $order_detail): ?>

        <tr>
            <th><?= htmlspecialchars($order_detail['name']) ?></th>
            <th><?= htmlspecialchars($order_detail['price']) ?></th>
            <th><?= htmlspecialchars($order_detail['quantity']) ?></th>
            <th><?= htmlspecialchars($order_detail['quantity'] * $order_detail['price']) ?></th>
        </tr>
        <?php endforeach; ?>

    </table>
</div>
</body>
</html>


