<?php
require_once 'models/Category.php';
require_once 'models/User.php';

$pageTitle = 'connecte toi';
$categories = getCategories();

if(isset($_GET['action']) && $_GET['action'] == 'disconnect'){
    unset($_SESSION['user']);
    unset($_SESSION['cart']);
    header('Location:index.php');
    exit;
}


if(!empty($_POST)){
    if(empty($_POST['email']) || empty($_POST['password'])){
        $_SESSION['flash']['error'] ='email et mot de passe obligatoires';
    }
    else{
        $user = connect();
        //si couple email/md5(password) trouvé, connecter l'utilisateur
        if(!empty($user)){

            $_SESSION['user'] = [
                'id' => $user['id'],
                'email' => $user['email'],
                'first_name' => $user['first_name'],
                'last_name' => $user['last_name'],
                'is_admin' => $user['is_admin'],
            ];
        }
        else{
            $_SESSION['flash']['error'] = 'mauvais identifiants !';

        }

    }
}

$view = 'views/log.php';


