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
                <label for="first_name">Prenom :</label>
            </div>
            <div class="col-75">
                <input  type="text" name="first_name" id="first_name" value="<?= isset($_SESSION[
                    'old_inputs']) ? $_SESSION['old_inputs']['first_name'] : '' ?><?= isset($user) ? $user['first_name']:''?>"
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="email">Mail :</label>
            </div>
            <div class="col-75">
                <input  type="text" name="email" id="first_name" value="<?= isset($_SESSION[
                    'old_inputs']) ? $_SESSION['old_inputs']['email'] : '' ?><?= isset($user) ? $user['email']:''?>">
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="password">Mot de passe :</label>
            </div>
            <div class="col-75">
                <input  type="password" name="password" id="password" autocomplete="off" value="<?= isset($_SESSION[
                    'old_inputs']) ? $_SESSION['old_inputs']['password'] : '' ?><?= isset($user) ? $user['password']:''?>">
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="is_admin">Admin ? </label>
            </div>
        <div class="col-75">
            <select name="is_admin" id ="is_admin">
                   <option value="0"<?php if(isset($_SESSION['old_inputs']) && $_SESSION['old_inputs']['is_admin'] == 0): ?>selected="selected"<?php endif;?>>Non</option>
                   <option value="1"<?php if(isset($_SESSION['old_inputs']) && $_SESSION['old_inputs']['is_admin'] == 1 ): ?>selected="selected"<?php endif;?>>Oui</option>
            </select>
        </div>
        <div class="row">
            <input type="submit" value="Enregistrer">
        </div>
    </form>
</div>
</div>
</body>
</html>


