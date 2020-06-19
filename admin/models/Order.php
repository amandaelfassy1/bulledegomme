<?php

function getAllOrders()
{
    $db = dbConnect();
    $query = $db->prepare('SELECT orders.id,  first_name,  last_name FROM orders,  users WHERE orders.user_id=users.id');
    $query->execute();
    $orders =  $query->fetchAll();
    return $orders;
}



function getOrderAndUserInformation($order_id)
{
    // query 1
    $db = dbConnect();
    $query = $db->prepare('SELECT orders.id, orders.date, orders.delivery_address, users.first_name, users.last_name, users.email
FROM orders 
JOIN users ON orders.user_id = users.id
WHERE orders.id= :order_id');
    $query->execute(['order_id' => $order_id]);
    $result = $query->fetch();
    return $result;
}


function getOrderProducts ($order_id) {
    $db = dbConnect();
    $query = $db->prepare('SELECT * FROM order_products WHERE order_products.order_id = :order_id');
    $query->execute(['order_id' => $order_id]);
    $result = $query->fetchAll();
    return $result;
}