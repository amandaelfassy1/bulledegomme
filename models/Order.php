<?php

function addOrder ()
{

    $db = dbConnect();

    // creation de la commande dans le system
    $query = $db->prepare("INSERT INTO orders (user_id, delivery_address) VALUES( :user_id, :delivery_address )");
    $query->execute([
        'user_id' => $_SESSION["user"]["id"],
        'delivery_address' => $_POST["delivery_address"]
    ]);

    // récupération de l'id de la commande en question
    $orderId = $db->lastInsertId();


    foreach($_SESSION['cart'] as $productId => $cart) {

        $product = getProduct($productId);

        $query = $db->prepare("INSERT INTO order_products (quantity, price, name, order_id) VALUE (:q, :p, :n, :o)");
        $query->execute([
            'q' => $cart,
            'p' => $product['price'],
            'n' => $product['name'],
            'o' => $orderId
        ]);
    }

    // todo update products with new quantity
    // 1. récup Q en DB
    // 2. retirer Q commande
    // 3. vérifier > 0 NOOOOON $_SESSION['flash']['error'];
    // 4. udpate db lasting quantity

    return ['status' => 1, 'order_id' => $orderId];
}


