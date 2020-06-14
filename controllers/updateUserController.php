<?php
require_once 'models/Category.php';
require_once 'models/User.php';
$pageTitle = 'Modifie ton profile ! ';
$categories = getCategories();
var_dump($_SESSION['user']);

if($_GET['action'] == 'editUser'){

    if(!empty($_POST)){
        var_dump($_SESSION['user']);

        if(empty($_POST['last_name']) || empty($_POST['email'])){

            if(empty($_POST['last_name'])){
                $_SESSION['messages'][] = 'Le champ nom est obligatoire !';
            }
            if(empty($_POST['email'])){
                $_SESSION['messages'][] = 'Le champ email est obligatoire !';
            }
            $_SESSION['old_inputs'] = $_POST;

        }
        else{
            var_dump($_SESSION['user']);

            $user = updateUser($_GET['id'], $_POST);
            if($user){
                $_SESSION['messages'][] = 'Utilisateur mis à jour !';
            }
            else{
                $_SESSION['messages'][] = 'Erreur lors de la mise à jour... :(';
            }
            header('Location:index.php');
            exit;
        }
    }

    else {
            if (!isset($_SESSION['old_inputs'])) {
                $product = getUser($_GET['id']);
            }
        }

}

$view = 'views/update_user.php';
