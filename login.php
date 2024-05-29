<?php
session_start();
include("function.php");
$conn = connection();
if (isset($_POST['submit'])) {
    $email = mysqli_real_escape_string($conn, filter_var($_POST['email'], FILTER_SANITIZE_EMAIL));
    $password = mysqli_real_escape_string($conn, htmlspecialchars($_POST['password'], ENT_QUOTES, 'UTF-8'));

    // Validasi format agar wajib email
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $error_message = "Format email tidak valid!";
    } else {
        // Menggunakan prepared statements untuk mencegah SQL injection
        $stmt = $conn->prepare("SELECT * FROM users WHERE email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $result = $stmt->get_result();
        $row = $result->fetch_assoc();

        // Verifikasi password tanpa hashing
        if ($row && $password == $row['password']) {
            $_SESSION['valid'] = $row['email'];
            $_SESSION['username'] = $row['username'];
            $_SESSION['fullname'] = $row['fullname'];
            $_SESSION['age'] = $row['age'];
            $_SESSION['id'] = $row['id'];

            if ($row['role'] == 'admin') {
                $_SESSION['admin'] = true;
            } else {
                $_SESSION['admin'] = false;
            }

            header("Location: index.php");
            exit();
        } else {
            $error_message = "Wrong Username or Password";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="img/logo aether 1.png" type="image/png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/login.css">
    <title>Login</title>
</head>
<body>
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
                                    <button onclick="window.location.href='register.php'" class="signin">Buat Akun</button>
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
                        <div class="box-container">
                            <div class="box form-box">
                                <header>Masuk</header>
                                <form action="" method="post">
                                    <div class="field input">
                                        <label for="email">Email</label>
                                        <input type="email" name="email" id="email" autocomplete="off" required>
                                    </div>

                                    <div class="field input">
                                        <label for="password">Password</label>
                                        <input type="password" name="password" id="password" autocomplete="off" required>
                                    </div>

                                    <div class="field">
                                        <input type="submit" class="btn" name="submit" value="Login" required>
                                    </div>
                                    <div class="links">
                                        Belum memiliki akun? <a href="register.php">Daftar Sekarang</a>
                                    </div>
                                    <?php
                                    if (isset($error_message)) {
                                        echo "<div class='error-message'>$error_message</div>";
                                    }
                                    ?>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>