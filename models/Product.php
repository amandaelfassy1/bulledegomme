<?php

//Fichier model des produits

//retourne 3 produits aléatoires
function getHomeProducts()
{
	$db = dbConnect();
	$query = $db->query('SELECT * FROM products ORDER BY rand() LIMIT 3');
	$products = $query->fetchAll();

	return $products;
}

function getProduct($productId)
{
	$db = dbConnect();
	$query = $db->query('SELECT * FROM products WHERE id = ' . $productId);
	$selectedProduct = $query->fetch();
	return $selectedProduct;
}

function getProducts()
{

	$db = dbConnect();
	$query = $db->query('SELECT * FROM products');
	$products = $query->fetchAll();

	return $products;
}

function getProductsByCategoryId($categoryId)
{

	$db = dbConnect();

	$query = $db->query('SELECT * FROM products WHERE category_id = ' . $categoryId);
	$products = $query->fetchAll();

	return $products;
}
