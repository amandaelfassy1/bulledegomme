<?php

function getAllOrders()
{
    $db = dbConnect();
    $query = $db->prepare('SELECT orders.id,  first_name,  last_name FROM orders,  users WHERE orders.user_id=users.id');
    $query->execute();
    $orders =  $query->fetchAll();
    return $orders;
}

function getOrder($id)
{
        $db = dbConnect();
        $query = $db->prepare('SELECT name, price, quantity FROM order_products WHERE order_id = ?');
        $query->execute([$id]);
        $result = $query->fetchAll();
        return $result;
}

function getInformationsUser($order_id)
{
    $db = dbConnect();
    $query = $db->prepare('SELECT user_name, user_lastname, delivery_address FROM orders WHERE orders.id=?');
    $query->execute([$order_id]);
    $result = $query->fetchAll();
    return $result;
}
