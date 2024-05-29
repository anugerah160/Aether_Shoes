<?php 
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buat Akun</title>
    <link rel="icon" href="img/logo aether 1.png" type="image/png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/login.css">
</head>

<body class="body-fixed">
    <header class="site-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header-logo">
                        <a href="index.php">
                            <img src="img/logo aether 1.png" alt="Logo">
                        </a>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="main-navigation">
                        <button class="menu-toggle"><span></span><span></span></button>
                        <nav class="header-menu">
                            <ul class="menu">
                                <li>
                                    <button onclick="window.location.href='login.php'" class="signin">Masuk</button>
                                    <button onclick="window.location.href='index.php'" class="signup">Kembali</button>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div id="viewport">
        <div id="js-scroll-content">
            <div class="repeat-img" style="background-image: url(image/pattern1_background.png);">
                <div section="main-banner">
                    <div class="sec-wp">
                        <div class="box-container mt-5">
                            <div class="box form-box">
                                <?php 
                                include("function.php");
                                $conn = connection();
                                
                                if(isset($_POST['submit'])){
                                    $email = mysqli_real_escape_string($conn, filter_var($_POST['email'], FILTER_SANITIZE_EMAIL));
                                    $password = htmlspecialchars($_POST['password'], ENT_QUOTES, 'UTF-8');
                                    $username = mysqli_real_escape_string($conn, htmlspecialchars($_POST['username'], ENT_QUOTES, 'UTF-8'));
                                    $fullname = mysqli_real_escape_string($conn, htmlspecialchars($_POST['fullname'], ENT_QUOTES, 'UTF-8'));
                                    $age = mysqli_real_escape_string($conn, htmlspecialchars($_POST['age'], ENT_QUOTES, 'UTF-8'));
                                    $telephone = mysqli_real_escape_string($conn, htmlspecialchars($_POST['telephone'], ENT_QUOTES, 'UTF-8'));
                                
                                    // Validasi format email
                                    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                                        echo "<div class='message'>
                                                <p>Format email tidak valid!</p>
                                            </div> <br>";
                                        echo "<a href='javascript:self.history.back()'><button class='btn'>Kembali</button>";
                                    } else {
                                        // Verifikasi email unik
                                        $verify_query = mysqli_query($conn, "SELECT email FROM users WHERE email='$email'");
                                
                                        if(mysqli_num_rows($verify_query) != 0){
                                            echo "<div class='message'>
                                                    <p>Email ini sudah digunakan, coba yang lain!</p>
                                                </div> <br>";
                                            echo "<a href='javascript:self.history.back()'><button class='btn'>Kembali</button>";
                                        } else {
                                            // Simpan password tanpa hashing (tidak direkomendasikan)
                                            $stmt = $conn->prepare("INSERT INTO users (email, password, username, fullname, age, no_telephone) VALUES (?, ?, ?, ?, ?, ?)");
                                            $stmt->bind_param("ssssii", $email, $password, $username, $fullname, $age, $telephone);
                                
                                            if ($stmt->execute()) {
                                                echo "<div class='message'>
                                                        <p>Registrasi berhasil!</p>
                                                    </div> <br>";
                                                echo "<a href='login.php'><button class='btn'>Masuk Sekarang</button>";
                                            } else {
                                                echo "<div class='message'>
                                                        <p>Error terjadi, coba lagi!</p>
                                                    </div> <br>";
                                                echo "<a href='javascript:self.history.back()'><button class='btn'>Kembali</button>";
                                            }
                                        }
                                    }
                                } else {
                                ?>

                                    <header>Buat Akun</header>
                                    <form action="" method="post">
                                        <div class="field input">
                                            <label for="email">Email</label>
                                            <input type="email" name="email" id="email" autocomplete="off" required>
                                        </div>
                                        
                                        <div class="field input">
                                            <label for="password">Password</label>
                                            <input type="password" name="password" id="password" autocomplete="off" required>
                                        </div>
                                        
                                        <div class="field input">
                                            <label for="username">Username</label>
                                            <input type="text" name="username" id="username" autocomplete="off" required>
                                        </div>

                                        <div class="field input">
                                            <label for="fullname">Nama Lengkap</label>
                                            <input type="text" name="fullname" id="fullname" autocomplete="off" required>
                                        </div>

                                        <div class="field input">
                                            <label for="age">Umur</label>
                                            <input type="number" name="age" id="age" autocomplete="off" required>
                                        </div>
                                        
                                        <div class="field input">
                                            <label for="telephone">No Telephone</label>
                                            <input type="number" name="telephone" id="telephone" autocomplete="off" required>
                                        </div>
                                        
                                        <div class="field">
                                            <input type="submit" class="btn" name="submit" value="Register" required>
                                        </div>
                                        <div class="links">
                                            Sudah memiliki akun? <a href="login.php">Masuk</a>
                                        </div>
                                    </form>
                                </div>
                                <?php } ?>
                            </div>
                        </body>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
