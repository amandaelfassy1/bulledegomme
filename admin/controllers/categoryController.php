<?php
require('models/Category.php');

if($_GET['action'] == 'list'){
    $categories = getAllCategories();
    require('views/categoryList.php');
}

elseif($_GET['action'] == 'new'){
    require('views/categoryForm.php');
}

elseif($_GET['action'] == 'add'){

    if(empty($_POST['name']) ){

        if(empty($_POST['name'])){
            $_SESSION['flash']['error'] = 'Le champ nom est obligatoire !';
        }
        $_SESSION['old_inputs'] = $_POST;
        header('Location:index.php?controller=categories&action=new');
        exit;
    }
    else{
        $resultAdd = addCategory($_POST);
        if($resultAdd){
            $_SESSION['flash']['success'] = 'Categorie enregistrée !';
        }
        else{
            $_SESSION['flash']['error'] = "Erreur lors de l'enregistrement de la categorie... :(";
        }
        header('Location:index.php?controller=categories&action=list');
        exit;
    }
}

elseif($_GET['action'] == 'edit'){

    if(!empty($_POST))

        if(empty($_POST['name']) ){

            if(empty($_POST['name'])){
                $_SESSION['flash']['error'] = 'Le champ nom est obligatoire !';
            }

            $_SESSION['old_inputs'] = $_POST;
            header('Location:index.php?controller=categories&action=edit&id='.$_GET['id']);
            exit;
        }
        else{

            $result = updateCategory($_GET['id'], $_POST);
            if($result){
                $_SESSION['flash']['success'] = 'categorie mise à jour !';
            }
            else{
                $_SESSION['flash']['error'] = 'Erreur lors de la mise à jour... :(';
            }
            header('Location:index.php?controller=categories&action=list');
            exit;
        }
    else{
        if(!isset($_SESSION['old_inputs'])){
            $category = getCategory($_GET['id']);
        }
        $acategories = getAllCategories();
        require('views/categoryForm.php');
    }

}
elseif($_GET['action'] == 'delete'){
    if(isset($_GET['id'])){
        $result = deleteCategory(   $_GET['id']    );
        header('Location:index.php?controller=categories&action=list');
        exit;
    }
    else{
        header('Location:index.php?controller=categories&action=list');
        exit;
    }
}