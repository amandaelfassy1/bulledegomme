<!DOCTYPE html>
 <html lang="fr">
 <head><title>Homepage</title>
     <?php require 'partials/head_assets.php'; ?>
 </head>
 <body class="index-body">
 <div class="container-fluid">
     <hr>
         <h1>Modifiez votre profile !</h1>
         <hr>
     <div class="form">
         <form method="post" action="index.php?page=update_user&action=editUser&id=<?= $_SESSION['user']['id']; ?>">
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
                     <input  type="text" name="email" id="email" value="<?= isset($_SESSION[
                         'old_inputs']) ? $_SESSION['old_inputs']['email'] : '' ?><?= isset($user) ? $user['email']:''?>"
                 </div>
             </div>
         </form>
     </div>
     <div>
         <input type="submit" value="Enregistrer">
     </div>
     </div>
 </div>
 </body>
 </html>
