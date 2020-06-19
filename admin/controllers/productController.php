<?php
require('models/Product.php');
require('models/Category.php');

if($_GET['action'] == 'list')
{
    $products = getAllProducts();
    require('views/productList.php');
}
elseif($_GET['action'] == 'new'){
    $categories = getAllCategories();
    require('views/productForm.php');
}
elseif($_GET['action'] == 'add'){

    if(empty($_POST['name']) || empty($_POST['category_id']) || empty($_POST['price'])){

        if(empty($_POST['name'])){
            $_SESSION['messages'][] = 'Le champ nom est obligatoire !';
        }
        if(empty($_POST['category_id'])){
            $_SESSION['messages'][] = 'Le champ categorie est obligatoire !';
        }
        if(empty($_POST['price'])){
            $_SESSION['flash']['error'] = 'Le champ price est obligatoire !';
        }
        $_SESSION['old_inputs'] = $_POST;
        header('Location:index.php?controller=products&action=new');
        exit;
    }
    else{
        $resultAdd = addProduct($_POST);
        if($resultAdd){
            $_SESSION['flash']['success'] = 'Produit enregistré !';
        }
        else{
            $_SESSION['flash']['error'] = "Erreur lors de l'enregistrement du produit... :(";
        }
        header('Location:index.php?controller=products&action=list');
        exit;
    }
}

elseif($_GET['action'] == 'edit'){

    if(!empty($_POST))

        if(empty($_POST['name']) || empty($_POST['quantity'] || empty($_POST['price']))){

            if(empty($_POST['name'])){
                $_SESSION['flash']['error'] = 'Le champ nom est obligatoire !';
            }
            if(empty($_POST['quantity'])){
                $_SESSION['flash']['error'] = 'Le champ quantity est obligatoire !';
            }
            if(empty($_POST['price'])){
                $_SESSION['flash']['error'] = 'Le champ price est obligatoire !';
            }

            $_SESSION['old_inputs'] = $_POST;
            header('Location:index.php?controller=products&action=edit&id='.$_GET['id']);
            exit;
        }
        else{

            $result = updateProduct($_GET['id'], $_POST);

            if($result){
                $_SESSION['flash']['success'] = 'Produit mis à jour !';
            }
            else{
                $_SESSION['flash']['error'] = 'Erreur lors de la mise à jour... :(';
            }
            header('Location:index.php?controller=products&action=list');
            exit;
        }
    else{
        if(!isset($_SESSION['old_inputs'])){
            $product = getProduct($_GET['id']);
        }
        $categories = getAllCategories();
        require('views/productForm.php');
    }
}
elseif($_GET['action'] == 'delete'){
    if(isset($_GET['id'])){
        $result = deleteProduct(   $_GET['id']    );
        header('Location:index.php?controller=products&action=list');
        exit;
    }
    else{
        header('Location:index.php?controller=products&action=list');
        exit;
    }
}