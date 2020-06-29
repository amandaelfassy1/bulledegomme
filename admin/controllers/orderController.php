<?php
require('models/Order.php');

if($_GET['action'] == 'list'){
    $orders = getAllOrders();
    require('views/orderList.php');
}

elseif($_GET['action'] == 'details'){

    $order_user_info = getOrderAndUserInformation($_GET['id']);
    $order_details = getOrderProducts($_GET['id']);
    require('views/orderDetail.php');
}

