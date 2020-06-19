<?php

//appel des données à exploiter
require_once 'models/Category.php';
require_once 'models/Order.php';
require_once 'models/Product.php';
$pageTitle= 'Confirmation';

if ($_GET['action'] == 'confirmOrder') {

    if(isset($_SESSION['user'])){
        if($_GET['status'] == 1) {
            $products = [];
            foreach ($_SESSION['cart'] as $productId => $quantity ){
                $products[] = getProduct($productId);

            }

        }
    }

}


$categories = getCategories();
$view = 'views/confirm.php';

