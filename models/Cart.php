<?php


function updateQuantity($id, $quantite){
    $db= dbConnect();
    $query = $db->prepare("UPDATE products SET quantity WHERE id =?");
    $result = $query->execute([
        $_SESSION['panier']['quantity'][] = $quantite,
        $id,
    ]);
    return $result;
}