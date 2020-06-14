<?php
require_once 'models/Category.php';
require_once 'models/Product.php';
require_once 'models/Cart.php';
$categories = getCategories();
$pageTitle= 'Panier';

if ($_GET['action'] == 'ajouterPanier') {
    //intval retourne la valeur numérique entière équivalente d'une variable
    $quantity = intval($_POST['quantity']);
    if($quantity == 0) {
        $_SESSION['flash']['error'] = 'Veuillez saisir une quantité valide';
        header('Location:index.php');
    }

    $_SESSION['cart'][$_GET['product_id']] = $quantity;
    header('Location:index.php?page=cart&action=list');
    exit();

}
if ($_GET['action'] == 'list') {

    $products = [];

    foreach ($_SESSION['cart'] as $productId => $quantity ){
        $products[] = getProduct($productId);
    }
    $view = 'views/cart.php';
}

if ($_GET['action'] == 'retirerPanier') {
    unset($_SESSION['cart'][$_GET['product_id']]);
    header('Location:index.php?page=cart&action=list');
    exit();

}
if ($_GET['action'] == 'updateQuantity') {
    $_SESSION['cart'][$_GET['product_id']] = $_POST['quantity'];
    header('Location:index.php?page=cart&action=list');
    exit();

}

