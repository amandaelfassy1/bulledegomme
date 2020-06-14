<?php

function getImagesByProductId($productId)
{
    $db = dbConnect();
    $query = $db->query('SELECT * FROM image WHERE products_id = ' . $productId);
    $selectedImage = $query->fetchAll();
    return $selectedImage;
}
