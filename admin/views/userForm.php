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
    <h2>Utilisateur </h2>
    <form action="index.php?controller=users&action=<?= isset($user) || (isset($_SESSION['old_inputs']) && $_GET['action'] == 'edit') ? 'edit&id='. $_GET['id'] : 'add' ?>" method="post" enctype="multipart/form-data">
        <div class="row">
            <div class="col-25">
                <label for="last_name">Nom :</label>
            </div>
            <div class="col-75">
                <input  type="text" name="last_name" id="last_name" value="<?= isset($_SESSION[
                    'old_inputs']) ? $_SESSION['old_inputs']['last_name'] : '' ?><?= isset($user) ? $user['last_name']:''?>"
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="year">Prenom :</label>
            </div>
            <div class="col-75">
                <input  type="text" name="first_name" id="first_name" value="<?= isset($_SESSION[
                    'old_inputs']) ? $_SESSION['old_inputs']['first_name'] : '' ?><?= isset($user) ? $user['first_name']:''?>"
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="year">Mail :</label>
            </div>
            <div class="col-75">
                <input  type="text" name="email" id="first_name" value="<?= isset($_SESSION[
                    'old_inputs']) ? $_SESSION['old_inputs']['email'] : '' ?><?= isset($user) ? $user['email']:''?>"
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="year">Mot de passe :</label>
            </div>
            <div class="col-75">
                <input  type="text" name="password" id="password" value="<?= isset($_SESSION[
                    'old_inputs']) ? $_SESSION['old_inputs']['password'] : '' ?><?= isset($user) ? $user['password']:''?>"
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


