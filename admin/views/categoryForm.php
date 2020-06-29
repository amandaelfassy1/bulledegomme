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
    <h2>Catégories </h2>
    <form action="index.php?controller=categories&action=<?= isset($category) || (isset($_SESSION['old_inputs']) && $_GET['action'] == 'edit') ? 'edit&id='. $_GET['id'] : 'add' ?>" method="post" enctype="multipart/form-data">
        <div class="row">
            <div class="col-25">
                <label for="name">Nom :</label>
            </div>
            <div class="col-75">
                <input  type="text" name="name" id="name" value="<?= isset($_SESSION[
                    'old_inputs']) ? $_SESSION['old_inputs']['name'] : '' ?><?= isset($category) ?htmlspecialchars($category['name']):''?>"
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="year">Description :</label>
            </div>
            <div class="col-75">
                <input  type="text" name="description" id="description" value="<?= isset($_SESSION[
                    'old_inputs']) ? $_SESSION['old_inputs']['description'] : '' ?><?= isset($category) ? $category['description']:''?>"
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


