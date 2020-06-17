<?php

//appel des données à exploiter
require_once 'models/Category.php';
require_once 'models/Order.php';
require_once 'models/Cart.php';
require_once 'models/Product.php';

if ($_GET['action'] == 'deliveryInformation') {

    if(!isset($_SESSION['user'])){
        header('Location:index.php?page=sign');
        exit();
    }

}

if($_GET['action'] == 'newOrder') {


    //VERIFIER QUE l'user est connecter
    if(isset($_SESSION['user'])){

        $return = addOrder();
        //met a jour le stock du produit dans la table products
        updateStockQuantity();
        header('Location: index.php?page=confirm&action=confirmOrder&status='.$return['status'].'&orderId='.$return['order_id']);
    } else {
        header('Location:index.php?page=sign');
        exit();
    }

}


$categories = getCategories();

//appel de la vue correspondante
$view = 'views/order.php';
