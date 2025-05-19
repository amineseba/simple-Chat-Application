<?php
    session_start();
    include_once 'config.php';
    $fname = mysqli_real_escape_string($conn,$_POST['fname']);
    $lname = mysqli_real_escape_string($conn,$_POST['lname']);
    $email = mysqli_real_escape_string($conn,$_POST['email']);
    $password = mysqli_real_escape_string($conn,$_POST['password']);

    if(!empty($fname) && !empty($lname) && !empty($email) && !empty($password)){
        // check if user email already exists in the database or not
        if(filter_var($email,FILTER_VALIDATE_EMAIL)){//IF EMAIL IS VALID
            // check if email already exists
            $sql = mysqli_query($conn,"SELECT * FROM users WHERE email = '{$email}'");
            if(mysqli_num_rows($sql) > 0){//if email already exist
                $error = "Email already exists";
                echo $error;
        }else{
            //check if user upload the file or not
            if(isset($_FILES['image'])){//if file is uploaded
                $img_name = $_FILES['image']['name'];//getting user uploaded img name
                $tmp_name = $_FILES['image']['tmp_name'];//getting temporary name of img to save/move file in our folder

                //let's expload image name to get the last extension like png jpg
                $img_explode = explode('.',$img_name);
                $img_ext = end($img_explode);//getting last extension of image name

                $extensions = ['png','jpeg','jpg'];//allowed extensions
                if(in_array($img_ext,$extensions) === true){//if user uploaded img extension is matched with any array extensions
                    $time = time();//current time, we need this because when you uploading user img to in our folder we rename user file with current time, so all the img file will hava a unique name
                    $new_img_name = $time.$img_name;//new image name
                    
                    if(move_uploaded_file($tmp_name,"images/".$new_img_name)){//moving file to our folder successfully
                    $status = "Active now";//user status will be active now after signup)
                    $random_id = rand(time(),10000000);//creating random id for user
                    //insert user data into users table
                    $sql2 = mysqli_query($conn,"INSERT INTO users (unique_id,fname,lname,email,password,img,status) VALUES ({$random_id},'{$fname}','{$lname}','{$email}','{$password}','{$new_img_name}','{$status}')");
                    if($sql2){//if data inserted successfully
                        $sql3 = mysqli_query($conn,"SELECT * FROM users WHERE email = '{$email}'");
                        if(mysqli_num_rows($sql3) > 0){//if user data is available
                            $row = mysqli_fetch_assoc($sql3);//fetching user data
                            $_SESSION['unique_id'] = $row['unique_id'];//using this session we used in other php files
                            echo "success";
                        }
                        }else{
                            echo "This email address not exist!";
                        }
                    }
                }else{
                    echo "Please select an image file - png, jpeg, jpg!";//if user not selected file
                }
            }else{
                echo "Please select an image file!";//if user not selected file
            }
        }
    }else{
        echo "Please enter a valid email address!";
    }
}else{
    echo "All input fields are required!";
}
?>