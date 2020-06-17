<?php

function getImagesByProductId($productId)
{
    $db = dbConnect();
    $query = $db->query('SELECT * FROM images WHERE products_id = ' . $productId);
    $selectedImage = $query->fetchAll();
    return $selectedImage;
}
