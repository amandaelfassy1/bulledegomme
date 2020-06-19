<?php

function dbConnect()
{
  try{
		$db = new PDO('mysql:host=localhost;dbname=bandedessinee;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	}
	catch (Exception $exception) //$e contiendra les éventuels messages d’erreur
	{
		die( 'Erreur : ' . $exception->getMessage() );
	}

  return $db;
}

/* Cette function permet de transformer un mot en un text normalisé */
/*  https://kodex.pierros.fr/php/url-php-slug */
function slugify($string, $delimiter = '-') {
    $oldLocale = setlocale(LC_ALL, '0');
    setlocale(LC_ALL, 'fr_FR.UTF-8');
    $clean = iconv('UTF-8', 'ASCII//TRANSLIT', $string);
    $clean = preg_replace("/[^a-zA-Z0-9\/_|+ -]/", '', $clean);
    $clean = strtolower($clean);
    $clean = preg_replace("/[\/_|+ -]+/", $delimiter, $clean);
    $clean = trim($clean, $delimiter);
    setlocale(LC_ALL, $oldLocale);
    return $clean;
}