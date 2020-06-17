<?php

function getAllOrders()
{
    $db = dbConnect();
    $query = $db->query('SELECT orders.id,  first_name,  last_name FROM orders,  users WHERE orders.user_id=users.id');
    $orders =  $query->fetchAll();
    return $orders;
}

function getOrder($id){
    {
        $db = dbConnect();
        $query = $db->prepare('SELECT name, price, quantity FROM order_products WHERE order_id = ?');
        $query->execute([$id]);
        $result = $query->fetchAll();
        return $result;
    }
}


