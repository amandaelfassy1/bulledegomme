<!DOCTYPE html>
 <html lang="fr">
 <head><title>Homepage</title>
     <?php require 'partials/head_assets.php'; ?>
 </head>
 <body class="index-body">
 <div class="container-fluid">
     <hr>
         <h1>Mon Compte !</h1>
     <hr>
     <div class="container">

         <h2>Voir mes commandes</h2>
         <?php  if(isset($_SESSION['user'])):?>
                 <div class="center">
                     <a href="index.php?page=confirm&action=confirmOrder&status=1&orderId=" class="btnPrimary">Voir !</a>
                 </div>
         <?php endif;?>
         <h2>Modifier mes données personnelles</h2>
         <?php if(isset($_SESSION['user'])): ?>
             <div class="center">
                 <a href="index.php?page=update_user&action=editUser&id=<?= $_SESSION['user']['id']; ?>" class="btnPrimary">Modifier !</a>
             </div>
         <?php endif; ?>
     </div>



 </div>
 </body>
 </html>
