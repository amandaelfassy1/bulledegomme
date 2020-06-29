<?php

//appel des données à exploiter
require_once 'models/Category.php';
require_once 'models/Product.php';
require_once 'models/Image.php';

$pageTitle = 'Description du produit';
$selectedProduct = false;
$images="";
if(isset($_GET['product_id']) ){

    //si $_GET['product_id'] (ID de produit voulu) n'est pas un entier naturel, on redirige l'utilisateur vers l'index
    if(!ctype_digit($_GET['product_id'])) {
        header('Location:index.php');
        exit;
    }
    $selectedProduct = getProduct($_GET['product_id']);
}

if(isset($_GET['product_id']) ){
    $images = getImagesByProductId($_GET['product_id']);
}

//si $selectedProduct vaut toujours false après tous les tests, c'est que le produit n'a pas été trouvé dans le tableau => on redirige vers index
if($selectedProduct == false ){
    header('Location:index.php');
    exit;
}


$categories = getCategories();

//appel de la vue correspondante
$view = 'views/product.php';
