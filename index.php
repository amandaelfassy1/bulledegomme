<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
    if(!isset($_SESSION['cart'])){
        $_SESSION['cart']=array();
    }
}

// définition des constantes

define('MAX_QUANTIY', 10);

require('helpers.php');
//routeur du site
//appel un controleur selon la valeur de $_GET['page'] (la page demandée)
//si pas de $_GET['page'] ou que $_GET['page'] ne correspond à rien de voulu, affichage de la page index

if(isset($_GET['page'])){

  switch ($_GET['page']) {
    case 'product_list' :
  		require 'controllers/productListController.php';
  		break;

      case 'product' :
      	require 'controllers/productController.php';
      	break;
      case 'cart' :
          require 'controllers/cartController.php';
          break;
      case 'sign' :
          require 'controllers/userController.php';
          break;
      case 'log' :
          require 'controllers/logController.php';
          break;
      case 'order' :
          require 'controllers/orderController.php';
          break;
      case 'confirm' :
          require 'controllers/confirmController.php';
          break;
      case 'profile' :
          require 'controllers/profileController.php';
          break;
      case 'update_user' :
          require 'controllers/updateUserController.php';
          break;
  	default :
  		require 'controllers/indexController.php';
  }

}

else{
  require 'controllers/indexController.php';
}
require 'views/bd.php';


