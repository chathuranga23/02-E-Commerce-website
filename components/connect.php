<?php

$db_name = 'mysql:host=localhost;dbname=tech_db';
$user_name = 'root';
$user_password = '';

$conn = new PDO($db_name, $user_name, $user_password);

function create_unique_id(){
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $characters_length = strlen($characters);
    $random_string = '';
    for($i = 0; $i < 20; $i++){
       $random_string .= $characters[mt_rand(0, $characters_length - 1)];
    }
    return $random_string;
 }

 if(isset($_COOKIE['user_id'])){
    $user_id = $_COOKIE['user_id'];
 }else{
    setcookie('user_id', create_unique_id(), time() + 60*60*24*30);
 }


?>