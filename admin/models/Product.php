<?php

function getAllProducts()
{
    $db = dbConnect();
    $query = $db->prepare('SELECT * FROM products');
    $query->execute();
    $products =  $query->fetchAll();
    return $products;
}

function getProduct($id){
        $db = dbConnect();
        $query = $db->prepare('SELECT * FROM products WHERE id = ?');
        $query->execute([$id]);
        $result = $query->fetch();
        return $result;
}

function getImages($product_id) {

        $db = dbConnect();
        $query = $db->prepare('SELECT * FROM images WHERE products_id = ?');
        $query->execute([$product_id]);
        $result = $query->fetchAll();
        return $result;
}


function deleteProduct($product_id)
{

    try {
        $images = getImages($product_id);
        foreach($images as $image) {
            unlink('../assets/images/'.$image['name']);
        }
        $product = getProduct($product_id);
        unlink('/../assets/images/'.$product['images']);

    } catch (Exception $e) {
        var_dump($e->getMessage());
        die;
    }

    $db = dbConnect();
    $query = $db->prepare('DELETE FROM products WHERE id = ?');
    $result = $query->execute([$product_id]);

    return $result;
}

function addProduct($informations){

    $db= dbConnect();
    $query = $db->prepare("INSERT INTO products (name, description, short_description, price, category_id,quantity) VALUES( :name, :description, :short_description, :price, :category_id, :quantity)");
    $result = $query->execute([
        'name' => $informations["name"],
        'description' => $informations["description"],
        'short_description' => $informations["short_description"],
        'price' => $informations["price"],
        'category_id' => $informations["category_id"],
        'quantity' => $informations["quantity"]
    ]);

    $category = getCategory($informations['category_id']);

    if($result){
        $productId = $db->lastInsertId();

        $allowed_extensions = array( 'jpg' , 'jpeg' , 'gif', 'png' );
        $my_file_extension = pathinfo( $_FILES['image']['name'] , PATHINFO_EXTENSION);
        if (in_array($my_file_extension , $allowed_extensions)){
            $new_file_name = $productId . '-' . time() . '.' . $my_file_extension ;
            $file_name = slugify($category['name']).'/' . $new_file_name;
            $destination = '../assets/images/'.$file_name;
            // vérification si c'est un dossier
            if(!is_dir('../assets/images/'.slugify($category['name']))) {
                // créaction de dossier
                mkdir('../assets/images/'.slugify($category['name']), 0755);
            }
            // déplacement d'un fichier dans le serveur
            $result = move_uploaded_file( $_FILES['image']['tmp_name'], $destination);

            // mise à jour DB
            $query = $db->prepare("UPDATE products SET image = ? WHERE id = ?");
            $query->execute([$file_name, $productId]);
        }
    }
    return $result;
}
function updateProduct($id, $informations){

    $db= dbConnect();
    $query = $db->prepare("UPDATE products SET name=?, description=?, short_description=?, price=?, category_id=?, quantity=? WHERE id =?");
    $result = $query->execute([
        $informations["name"],
        $informations["description"],
        $informations["short_description"],
        $informations["price"],
        $informations["category_id"],
        $informations["quantity"],
        $id
    ]);




    return $result;
}
