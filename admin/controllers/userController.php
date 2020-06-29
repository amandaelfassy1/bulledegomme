<?php
require('models/User.php');

if($_GET['action'] == 'list'){
    $users = getAllUsers();
    require('views/userList.php');
}

elseif($_GET['action'] == 'new'){
    require('views/userForm.php');
}

elseif($_GET['action'] == 'add'){

    if(empty($_POST['last_name']) || empty($_POST['email']) ){

        if(empty($_POST['last_name'])){
            $_SESSION['flash']['error'] = 'Le champ nom est obligatoire !';
        }
        if(empty($_POST['email'])){
            $_SESSION['flash']['error'] = 'Le champ email est obligatoire !';
        }

        $_SESSION['old_inputs'] = $_POST;
        header('Location:index.php?controller=users&action=new');
        exit;
    }
    else{
        $resultAdd = addUser($_POST);
        if($resultAdd){
            $_SESSION['flash']['success'] = 'Utilisateur enregistré !';
        }
        else{
            $_SESSION['flash']['error'] = "Erreur lors de l'enregistrement de l'utilisateur... :(";
        }
        header('Location:index.php?controller=users&action=list');
        exit;
    }
}

elseif($_GET['action'] == 'edit'){

    if(!empty($_POST))

        if(empty($_POST['last_name']) || empty($_POST['email'])){

            if(empty($_POST['last_name'])){
                $_SESSION['messages'][] = 'Le champ nom est obligatoire !';
            }
            if(empty($_POST['email'])){
                $_SESSION['flash']['error'] = 'Le champ email est obligatoire !';
            }

            $_SESSION['old_inputs'] = $_POST;
            header('Location:index.php?controller=users&action=edit&id='.$_GET['id']);
            exit;
        }
        else{
            $result = updateUser($_GET['id'], $_POST);
            if($result){
                $_SESSION['flash']['success'] = 'Utilisateur mis à jour !';
            }
            else{
                $_SESSION['flash']['error'] = 'Erreur lors de la mise à jour... :(';
            }
            header('Location:index.php?controller=users&action=list');
            exit;
        }
    else{
        if(!isset($_SESSION['old_inputs'])){
            $user = getUser($_GET['id']);
        }
        $users = getAllUsers();
        require('views/userForm.php');
    }

}
elseif($_GET['action'] == 'delete'){
    if(isset($_GET['id'])){
        $result = deleteUser(   $_GET['id']    );
        header('Location:index.php?controller=users&action=list');
        exit;
    }
    else{
        header('Location:index.php?controller=users&action=list');
        exit;
    }
}