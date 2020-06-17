<?php
require('models/Order.php');

if($_GET['action'] == 'list'){
    $orders = getAllOrders();
    require('views/orderList.php');
}

elseif($_GET['action'] == 'details'){

    $order_details = getOrder($_GET['id']);
//die();
    require('views/orderDetail.php');
}

