<!DOCTYPE html>
 <html lang="fr">
 <head><title>Homepage</title>
     <?php require 'partials/head_assets.php'; ?>
 </head>
 <body class="index-body">
 <div class="container-fluid">
     <hr>
         <h1>Inscris toi !</h1>
         <hr>
     <div class="form">
     <form action="" method="post" enctype="multipart/form-data">
             <div class="row">
                 <div class="col-25">
                     <label for="first_name">First Name</label>
                 </div>
                 <div class="col-75">
                     <input type="text" id="first_name" name="first_name" placeholder="Your name..">
                 </div>
             </div>
             <div class="row">
                 <div class="col-25">
                     <label for="last_name">Last Name</label>
                 </div>
                 <div class="col-75">
                     <input type="text" id="last_name" name="last_name" placeholder="Your last name..">
                 </div>
             </div>
             <div class="row">
                 <div class="col-25">
                     <label for="email">Mail</label>
                 </div>
                 <div class="col-75">
                     <input type="text" id="email" name="email" placeholder="Your mail">
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
             </div>

         </form>

     </div>
     <div class="connexion">
         <p>Déjà membre ? Connectez-vous ! <button class="log"><a class="login" href="index.php?page=log">je me connecte</a> </button>  </p>
     </div>
 </div>
 </body>
 </html>
