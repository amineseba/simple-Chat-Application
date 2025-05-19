<?php
    $conn = mysqli_connect("localhost", "root", "", "chatapp");
    if(!$conn){
        echo "Database Connected successfully" .  mysqli_connect_error();
    }
?>