<?php

//Fichier model des catégories

function getCategories()
{
	$db = dbConnect();
	$query = $db->prepare('SELECT * FROM categories');
	$query->execute();
	$categories = $query->fetchAll();
	return $categories;
}
