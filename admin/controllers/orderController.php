<?php
require('models/Order.php');

if($_GET['action'] == 'list'){
    $orders = getAllOrders();
    require('views/orderList.php');
}

elseif($_GET['action'] == 'details'){

    $orders= getInformationsUser($_GET['id']);
    $order_details = getOrder($_GET['id']);
    require('views/orderDetail.php');
}

