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

    <div class="container">
        <h2>Produit </h2>
        <form action="index.php?controller=products&action=<?= isset($product) || (isset($_SESSION['old_inputs']) && $_GET['action'] == 'edit') ? 'edit&id='. $_GET['id'] : 'add' ?>" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col-25">
                    <label for="name">Nom :</label>
                </div>
                <div class="col-75">
                    <input  type="text" name="name" id="name" value="<?= isset($_SESSION[
                        'old_inputs']) ? $_SESSION['old_inputs']['name'] : '' ?><?= isset($product) ? htmlspecialchars($product['name']):''?>"
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="label_id">Catégorie :</label>
                </div>
                <div class="col-75">
                    <select name ="category_id" id ="category_id">
                        <?php
                        foreach ($categories as $category):?>
                            <option value ="<?= $category['id'];?>"<?php if(isset($product)&& $product['category_id']==
                            $category['id']):?>selected="selected"<?php endif;?>><?= htmlspecialchars($category['name']);?></option>
                        <?php endforeach;?>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="biography">Description :</label>
                </div>
                <div class="col-75">
                    <textarea name="description" id="description"><?= isset($_SESSION[
                    'old_inputs']) ? $_SESSION['old_inputs']['description'] : '' ?><?= isset($product) ? htmlspecialchars($product['description']):''?>
                    </textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="short_description">Description courte :</label>
                </div>
                <div class="col-75">
                    <textarea name="short_description" id="short_description"><?= isset($_SESSION[
                            'old_inputs']) ? $_SESSION['old_inputs']['short_description'] : '' ?><?= isset($product) ?htmlspecialchars($product['short_description']):''?>
                    </textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="price">Prix :</label>
                </div>
                <div class="col-75">
                    <textarea name="price" id="price"><?= isset($_SESSION['old_inputs']) ? $_SESSION['old_inputs']['price'] :'' ?><?= isset($product) ? htmlspecialchars($product['price']):''?></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="quantity">Quantité :</label>
                </div>
                <div class="col-75">
                    <textarea name="quantity" id="quantity"><?= isset($_SESSION['old_inputs']) ? $_SESSION['old_inputs']['quantity'] : '' ?><?= isset($product) ? htmlspecialchars($product['quantity']):''?></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="image">image :</label>
                </div>
                <div class="col-75">
                    <input type="file" name="image" id="image" /><br>
                </div>
            </div>
            <div class="row">
                <input type="submit" value="Enregistrer">
            </div>
        </form>
    </div>
</div>
</body>
</html>


