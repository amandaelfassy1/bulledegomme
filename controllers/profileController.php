<?php
require_once 'models/Category.php';
require_once 'models/User.php';
$pageTitle = 'Modifie ton profile ! ';
$categories = getCategories();

// todo new page listes commandes => juste orders ID date, adresse
// todo click to vas vers oder_id => new page avec les détails d'une commande comme on a fait dans l'admin.

$view = 'views/profile.php';
