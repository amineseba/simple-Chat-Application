<?php
    session_start();
    if(isset($_SESSION['unique_id'])){
        header("location: users.php");
    }
?>
<?php include_once "header.php"; ?>
    <div class="neon-cover">
        <div class="wrapper">
            <div class="form signup">
                <section>
                    <header>
                        <i class="fas fa-comments"></i> Welcome to our Chat App
                    </header>
                    <form action="#" enctype="multipart/form-data" autocomplete="off">
                        <div class="error-text"></div>
                        <div class="name-details">
                            <div class="field input">
                                <label for="name">First Name</label>
                                <input type="text" name="fname" placeholder="Enter your name" required>
                            </div>
                            <div class="field input">
                                <label for="surname">Last Name</label>
                                <input type="text" name="lname" placeholder="Enter your lastname" required>
                            </div>
                        </div>
                        <div class="field input">
                            <label for="email">Email</label>
                            <input type="email" name="email" placeholder="Enter your email" required>
                        </div>
                        <div class="field input">
                            <label for="password">Password</label>
                            <input type="password" name="password" placeholder="Enter your password" required>
                        </div>
                        <div class="field image">
                            <label for="image">Select Image</label>
                        </div>
                        <input type="file" title="file" name="image" accept="image/x-png,image/gif,image/jpeg" required>

                        <div class="field button">
                            <input type="submit" value="Continue to Chat">
                        </div>
                        <div class="link">
                            Already signed up? <a href="login.php">Login now</a>
                        </div>
                    </form>
                </section>
            </div>
        </div>
    </div>

    <script src="javascript/signup.js"></script>
</body>
</html>