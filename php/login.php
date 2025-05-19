<?php
    session_start();
    include_once 'config.php';
    $email = mysqli_real_escape_string($conn,$_POST['email']);
    $password = mysqli_real_escape_string($conn,$_POST['password']);

    if(!empty($email) && !empty($password)){
        // Check if the user exists in the database
        $sql = mysqli_query($conn, "SELECT * FROM users WHERE email = '{$email}' AND password = '{$password}'");
        if(mysqli_num_rows($sql)>0){
            $row = mysqli_fetch_assoc($sql);
            $status = "Active now";
            $sql2 = mysqli_query($conn, "UPDATE users SET status = '{$status}' WHERE unique_id={$row['unique_id']}");
            
            // Check if the user is already logged in
            if($sql2){
            $_SESSION['unique_id'] = $row['unique_id']; // Store the unique ID in session
            echo "success";
        }
        }else{
            echo "Email or password is incorrect!";
            }

    }else{
        echo "All input fields are required!";
    }

?>