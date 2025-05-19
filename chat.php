<?php
    session_start();
    include_once "php/config.php";
    // Check if the user is logged in
    if(!isset($_SESSION['unique_id'])){
        header("location: login.php");
    }
?>

<?php include_once "header.php"; ?>
<body>
    <div class="neon-cover">
        <div class="wrapper">
            <section class="chat-area">
                <header>
                <?php
                    include_once "php/config.php";
                    $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
                    $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$user_id}");
                    if(mysqli_num_rows($sql) > 0){
                        $row = mysqli_fetch_assoc($sql);
                    }else{
                        header("location: users.php");
                    }
                    ?>
                    <a href="users.php" class="back-icon"><i class="fas fa-arrow-left"></i> <  </a>
                    <img src="php/images/<?php echo $row['img']?>" alt="">
                    <div class="details">
                        <span><?php echo $row['fname'] . " " . $row['lname'] ?></span>
                        <p><?php echo $row['status'] ?></p>
                    </div>
                </header>
                <div class="chat-box">
                    <!-- Chat messages will be loaded here -->
                    <!-- This is where the chat messages will be displayed -->
                    <!-- The chat messages will be dynamically loaded using AJAX -->
                    
                </div>

                <form action="#" class="typing-area">
                    <input type="text" name="outgoing_id" value="<?php echo $_SESSION['unique_id']; ?>" hidden>
                    <input type="text" name="incoming_id" value="<?php echo $user_id; ?>" hidden>
                    <input type="text" name="message" class="input-field" placeholder="Type a message here..." autocomplete="off">
                    <button type="submit" title="Send Message"><i class="fab fa-telegram-plane"></i>send</button>
                </form>
            </section>
        </div>
    </div>

    <script src="javascript/chat.js"></script>
    
</body>
</html>
