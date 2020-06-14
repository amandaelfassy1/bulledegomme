<?php

//appel des données à exploiter
require_once 'models/Category.php';
require_once 'models/Product.php';

$products = getHomeProducts();

$categories = getCategories();
$pageTitle = 'Page d`accueil';
//appel de la vue correspondante
$view= 'views/index.php';


