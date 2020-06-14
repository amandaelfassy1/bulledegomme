<?php

function getAllUsers()
{
    $db = dbConnect();
    $query = $db->query('SELECT * FROM users');
    $categories =  $query->fetchAll();
    return $categories;
}

function getUser($id){
    {
        $db = dbConnect();
        $query = $db->prepare('SELECT * FROM users WHERE id = ?');
        $query->execute([$id]);
        $result = $query->fetch();
        return $result;
    }
}
function deleteUser($id)
{
    $db = dbConnect();
    $query = $db->prepare('DELETE FROM users WHERE id = ?');
    $result = $query->execute(
        [
            $id
        ]
    );

    return $result;
}
function addUser($informations){

    $db= dbConnect();
    $query = $db->prepare("INSERT INTO users (name, description) VALUES( :name, :description)");
    $result = $query->execute([
        'name' => $informations["name"],
        'description' => $informations["description"]
    ]);
    if($result && isset($_FILES['image']['tmp_name'])){
        $albumId = $db->lastInsertId();

        $allowed_extensions = array( 'jpg' , 'jpeg' , 'gif', 'png' );
        $my_file_extension = pathinfo( $_FILES['image']['name'] , PATHINFO_EXTENSION);
        if (in_array($my_file_extension , $allowed_extensions)){
            $new_file_name = $albumId . '.' . $my_file_extension ;
            $destination = '../assets/images/artist/' . $new_file_name;
            $result = move_uploaded_file( $_FILES['image']['tmp_name'], $destination);

            $db->query("UPDATE albums SET image = '$new_file_name' WHERE id = $albumId");
        }
    }
    return $result;
}
function updateUser($id, $informations){

    $db= dbConnect();
    $query = $db->prepare("UPDATE users SET name=?, description=? WHERE id =?");
    $result = $query->execute([
        $informations["name"],
        $informations["description"],
        $id,
    ]);
    return $result;
}