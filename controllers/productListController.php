<?php
//appel des données à exploiter
require_once 'models/Category.php';
require_once 'models/Product.php';

//mécanique du controller (vérifications)
//postulat de base : aucune catégorie n'a été séléctionnée
$selectedCategory = false;

$categories = getCategories();

//si ID de catégorie demandé
if(isset($_GET['category_id'])){
    //si ça n'est pas un entier naturel, redirection vers index.php
    if(!ctype_digit($_GET['category_id'])) {
        header('Location:index.php');
        exit;
    }
    //on cherche la catégorie correspondante
    foreach($categories as $category){
        if($category['id'] == $_GET['category_id'] ){
            $selectedCategory = $category;
        }
    }
    // si on a reçu un category_id en GET mais que $selectedCategory vaut toujours false => mauvaise catégorie demandée => redirection
    if($selectedCategory == false){
        header('Location:index.php');
        exit;
    }
    $pageTitle = $selectedCategory['name'];

    //si ce test est passé, alors $selectedCategory est une catégorie existante

    $products = getProductsByCategoryId($_GET['category_id']);
}
else{
  $products = getProducts();
    $pageTitle = 'Tous les produits';
}

//appel de la vue correspondante
$view = 'views/product_list.php';
