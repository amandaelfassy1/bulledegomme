<?php
require_once 'models/Category.php';
require_once 'models/User.php';
$pageTitle = 'Modifie ton profile ! ';
$categories = getCategories();

$view = 'views/profile.php';
