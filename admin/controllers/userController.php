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

    if(empty($_POST['name']) ){

        if(empty($_POST['name'])){
            $_SESSION['messages'][] = 'Le champ nom est obligatoire !';
        }

        $_SESSION['old_inputs'] = $_POST;
        header('Location:index.php?controller=users&action=new');
        exit;
    }
    else{
        $resultAdd = addUser($_POST);
        if($resultAdd){
            $_SESSION['messages'][] = 'Utilisateur enregistré !';
        }
        else{
            $_SESSION['messages'][] = "Erreur lors de l'enregistrement de l'utilisateur... :(";
        }
        header('Location:index.php?controller=users&action=list');
        exit;
    }
}

elseif($_GET['action'] == 'edit'){

    if(!empty($_POST))

        if(empty($_POST['name']) ){

            if(empty($_POST['name'])){
                $_SESSION['messages'][] = 'Le champ nom est obligatoire !';
            }

            $_SESSION['old_inputs'] = $_POST;
            header('Location:index.php?controller=categories&action=edit&id='.$_GET['id']);
            exit;
        }
        else{

            $result = updateUser($_GET['id'], $_POST);
            if($result){
                $_SESSION['messages'][] = 'categorie mise à jour !';
            }
            else{
                $_SESSION['messages'][] = 'Erreur lors de la mise à jour... :(';
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
    }
    else{
        header('Location:index.php?controller=users&action=list');
        exit;
    }
}