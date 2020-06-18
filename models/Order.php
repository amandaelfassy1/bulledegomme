<?php

function addOrder ()
{
    $db = dbConnect();
    // creation de la commande dans le system
    $query = $db->prepare("INSERT INTO orders (user_id, delivery_address, user_name, user_lastname ) VALUES( :user_id, :delivery_address, :user_name, :user_lastname)");
    $query->execute([
        'user_id' => $_SESSION["user"]["id"],
        'delivery_address' => $_POST["delivery_address"],
        'user_name' => $_SESSION["user"]["first_name"],
        'user_lastname' => $_SESSION["user"]["last_name"]

    ]);
    // récupération de l'id de la commande en question
    $orderId = $db->lastInsertId();

    foreach($_SESSION['cart'] as $productId => $cart) {
        $product = getProduct($productId);
        $query = $db->prepare("INSERT INTO order_products (quantity, price, name, order_id) VALUE (:quantity, :price, :name, :order_id)");
        $query->execute([
            'quantity' => $cart,
            'price' => $product['price'],
            'name' => $product['name'],
            'order_id' => $orderId
        ]);
    }
    return ['status' => 1, 'order_id' => $orderId];
}


//met a jour le stock du produit dans la table products
function updateStockQuantity()
{
    $db= dbConnect();
    foreach($_SESSION['cart'] as $productId => $cart) {
        $product = getProduct($productId);
        $newQuantity = $product['quantity']- $cart;
        $query = $db->prepare("UPDATE products SET quantity = :quantity WHERE id = :id");
        $query->execute(array('quantity' => $newQuantity,'id' => $productId));
    }


}