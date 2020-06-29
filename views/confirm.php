<?php require 'partials/head_assets.php'; ?>
<div class="cart">
    <h2>Confirmation de commande</h2>
</div>
<div class="shopping-card">
        <table>
            <legend>
                <p>Commande numéro : <?= $_GET['orderId'] ?></p>
            </legend>
            <tr>
                <th>Produit</th>
                <th>Prix</th>
                <th>Quantité</th>
                <th>Total</th>
            </tr>
            <?php foreach($products as $product): ?>
                <tr>
                    <td><img src="./assets/images/<?= $product['image'] ?>"></td>
                    <td><?= $product['price'] ?>€</td>
                    <td><?= $_SESSION['cart'][$product['id']] ?></td>
                    <td><?= $_SESSION['cart'][$product['id']] * $product['price']?>€</td>
                </tr>
            <?php endforeach; ?>
        </table>
</div>
