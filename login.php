<?php
    session_start();
    if(isset($_SESSION['unique_id'])){
        header("location: users.php");
    }
?>
<?php include_once "header.php"; ?>
    <body>
        <div class="neon-cover">

        
        <div class="wrapper">
            <div class="form login">
            <section>
                <header>Hello, Welcome again </header>
                <form action="#">
                <div class="error-text"></div>
                <div class="field input">
                    <label for="email">Email</label>
                    <input type="text" name="email" placeholder="Enter your email" required>
                </div>
                <div class="field input">
                    <label for="password">Password</label>
                    <input type="password" name="password" placeholder="Enter your password" required>
                </div>
                <div class="field button">
                    <input type="submit" name="submit" value="Continue to Chat">
                </div>
                <div class="link">Not yet signed up? <a href="index.php">signup now</a></div>
                <!-- <div class="link">Forgot password? <a href="login.html">Reset now</a></div> -->
                </form>
            </div>
            </section>
        </div>
        </div>

        <script src="javascript/login.js"></script>
        
    </body>
</html>