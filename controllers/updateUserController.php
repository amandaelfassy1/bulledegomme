<?php
require_once 'models/Category.php';
require_once 'models/User.php';
$pageTitle = 'Modifie ton profile ! ';
$categories = getCategories();

if($_GET['action'] == 'editUser'){

    if(!empty($_POST)){

        if(empty($_POST['last_name']) || empty($_POST['first_name'] || empty($_POST['email']))){

            if(empty($_POST['last_name'])){
                $_SESSION['flash']['error'] = 'Le champ nom est obligatoire !';
            }
            if(empty($_POST['first_name'])){
                $_SESSION['flash']['error'] = 'Le champ email est obligatoire !';
            }
            if(empty($_POST['email'])){
                $_SESSION['flash']['error'] = 'Le champ email est obligatoire !';
            }
            $_SESSION['old_inputs'] = $_POST;

        }
        else{

            $user = updateUser($_GET['id'], $_POST);

            if($user){
                $_SESSION['flash']['success'] = 'Utilisateur mis à jour !';
            }
            else{
                $_SESSION['flash']['error'] = 'Erreur lors de la mise à jour... :(';
            }
            header('Location:index.php');
            exit;
        }
    }

    else {
            if (!isset($_SESSION['old_inputs'])) {
                $user = getUser($_GET['id']);
            }
        }

}


$view = 'views/update_user.php';
