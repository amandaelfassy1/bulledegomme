<?php

function login(){
    $db = dbConnect();
    $query = $db->prepare('SELECT email FROM users WHERE email = ?');
    $query->execute([
        $_POST['email']
    ]);
    $emailExists = $query->fetch();

    if(!$emailExists){
        $query = $db->prepare('INSERT INTO users (last_name, first_name, email, password) VALUES (?, ?, ?, ?)');
        $result = $query->execute(
            [
                $_POST['last_name'],
                $_POST['first_name'],
                $_POST['email'],
                password_hash($_POST['password'], PASSWORD_ARGON2I),
            ]
        );
        $_SESSION['flash']['success'] = 'Vous êtes bien inscrit !';
    }
    else{
        $_SESSION['flash']['error'] = 'email déjà utilisé';

    }
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

function connect()
{
    $db = dbConnect();
    $query = $db->prepare('SELECT * FROM users WHERE email = :email');
    $query->execute([
        'email' => $_POST['email'],
    ]);
    $result = $query->fetch();

    if(!empty($result)){
        if(password_verify($_POST['password'], $result['password'])){
            return $result;
        }
    }
    return false;

}



function updateUser($id, $informations){

    $db= dbConnect();
    $query = $db->prepare("UPDATE users SET last_name=?, first_name=?, email=? WHERE id =?");
    $result = $query->execute([
        $informations["last_name"],
        $informations["first_name"],
        $informations["email"],
        $id,
    ]);
    return $result;
}
