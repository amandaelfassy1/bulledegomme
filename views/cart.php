<?php require 'partials/head_assets.php'; ?>
<hr>
<div class="cart">
    <h2>Mon panier</h2>
</div>
<div class="shopping-card">
        <table class="cartTable">
            <tr>
                <th>Produit</th>
                <th>Prix</th>
                <th>Quantité</th>
                <th>Total</th>
                <th></th>
            </tr>
            <?php foreach($products as $product): ?>
                <tr>
                    <td><img src="./assets/images/<?= $product['image'] ?>"></td>
                    <td><?= $product['price'] ?></td>
                    <td>
                        <form method="post" action="index.php?page=cart&action=updateQuantity&product_id=<?= $product['id']; ?>">
                            <select name="quantity" id="">
                                <?php for($i=1; $i <= $product['quantity']; $i++):?>
                                    <option <?= ($_SESSION['cart'][$product['id']] == $i) ? 'selected' : '' ; ?> value="<?= $i ?>"><?= $i ?></option>
                                <?php endfor; ?>
                            </select>
                            <button class="suppr" type="submit">update</button>
                        </form>
                    </td>
                    <td><?= $_SESSION['cart'][$product['id']] * $product['price']?></td>
                    <td><a class="suppr" href="index.php?page=cart&action=retirerPanier&product_id=<?= $product['id']; ?>"><i class="fa fa-times"></i></a></td>
                </tr>
            <?php endforeach; ?>
        </table>
        <div class="payement">
            <p>Total : <?php $total = 0; foreach($products as $product):
                $total = $total + $_SESSION['cart'][$product['id']] * $product['price'];
                             endforeach; echo $total; ?>
            </p>
            <a href="index.php?page=order&action=deliveryInformation" class="btnPrimary">Commander</a>
        </div>
</div>





