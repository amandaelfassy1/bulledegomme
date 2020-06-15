<?php
require_once 'models/User.php';
require_once 'models/Category.php';
$pageTitle="Inscris toi !";

if(isset($_POST['forminscription'])){
    $_POST['last_name']=htmlspecialchars($_POST['last_name']);
    $_POST['first_name']=htmlspecialchars($_POST['first_name']);
    $_POST['email']=htmlspecialchars($_POST['email']);

    if(!empty($_POST['forminscription'])) {

        if (empty($_POST['last_name']) || empty($_POST['first_name']) || empty($_POST['email']) || empty($_POST['password'])) {

            if (empty($_POST['last_name'])) {
                $_SESSION['flash']['error'] = 'Le champ prenom est obligatoire !';
            }
            if (empty($_POST['first_name'])) {
                $_SESSION['flash']['error'] = 'Le champ nom est obligatoire !';
            }
            if (empty($_POST['email'])) {
                $_SESSION['flash']['error'] = 'Le champ email est obligatoire !';
            }
            if (empty($_POST['password'])) {
                $_SESSION['flash']['error'] =  'Le champ password est obligatoire !';
            }
            $_SESSION['old_inputs'] = $_POST;
            header('Location:index.php?page=sign');
            exit;
        }

    else{
            $resultAdd = login();

            if($resultAdd){
                $_SESSION['flash']['success']  = 'vous etes enregistré !';
            }
            else{
                $_SESSION['flash']['error'] =  "Erreur lors de l'enregistrement... :(";
            }

            header('Location:index.php?page=sign');
            exit;
        }
    }
}

$categories = getCategories();
$view= 'views/sign.php';
