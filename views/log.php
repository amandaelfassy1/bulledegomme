<!DOCTYPE html>
 <html lang="fr">
 <head><title>Homepage</title>
     <?php require 'partials/head_assets.php'; ?>
 </head>
 <body class="index-body">
 <?php if(isset($_SESSION['user'])): ?>
 <div class="hello">
     <p>Salut <?= $_SESSION['user']['first_name'] ?>
         <a href="?page=log&action=disconnect">déconnexion</a></p>
 </div>
 <?php endif; ?>

 <div>
     <hr>
     <h1>Connectez-vous !</h1>
     <hr>
     <div class="form">
         <form action="" method="post" enctype="multipart/form-data">
             <div class="row">
                 <div class="col-25">
                     <label for="email">Mail</label>
                 </div>
                 <div class="col-75">
                     <input type="text" id="email" name="email" placeholder="Your mail..">
                 </div>
             </div>
             <div class="row">
                 <div class="col-25">
                     <label for="password">Mot de Passe </label>
                 </div>
                 <div class="col-75">
                     <input type="password" id="password" name="password" placeholder="Your password..">
                 </div>
             </div>
             <br>

             <div class="row">
                 <input type="submit" name='forminscription' value="Valider">
             </div>         </form>
     </div>


 </div>
 </body>
 </html>
