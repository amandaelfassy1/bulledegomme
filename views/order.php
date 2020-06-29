<?php require 'partials/head_assets.php'; ?>
<div class="form">
    <form method='post' action="index.php?page=order&action=newOrder">
        <div class="row">
            <div class="col-25">
                <label for="delivery_address">Adresse de livraison</label>
            </div>
            <div class="col-75">
                <input type="text" id="delivery_address" name="delivery_address" placeholder="Votre adresse...">
            </div>
        </div>
        <br>
        <div class="row">
            <input type="submit" value="Valider la commande">
        </div>
    </form>
</div>