<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aether Footwear Official</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- Header -->
    <header>
        <h1>AETHER FOOTWEAR OFFICIAL</h1>
    </header>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="img/logo aether 1.png" alt="Aether Logo" height="40" onclick="window.location='index.php';">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="kategori.php">Kategori</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="gender.php?kode_sepatu=UNX11Y">Unisex</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="gender.php?kode_sepatu=BYO11Y">Pria</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="gender.php?kode_sepatu=GRL11Y">Wanita</a>
                </li>
            </ul>
            <form class="d-flex ms-3">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            <div class="col-md-1">

            </div>
            <?php
            session_start();
            if (isset($_SESSION['valid'])) {
                echo '<div class="ms-3 justify-content-end" >
                        <img class="ms-3" style="cursor:pointer;" src="img/cart.png" onclick="window.location=\'keranjang.php\';">
                        <img class="ms-4" style="cursor:pointer;" src="img/codicon_account.png" onclick="window.location=\'profile.php\';">
                      </div>';
            }else{
                echo '<div class="ms-3">
                <a href="login.php" class="btn btn-outline-primary">Daftar/Masuk Akun</a>
            </div>';
            }
            ?>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<?php
require('function.php');

if (isset($_GET['kode_sepatu'])) {
    $kode_kategori = $_GET['kode_sepatu'];
    $shoes = getShoesByCategory($kode_kategori);

?>
<div class="conta">
  <h1 class="kole"><?php echo strtoupper($shoes[0]['Nama_Kategori']); ?></h1>
</div>
<div class="container-fluid" style="margin-bottom: 150px">
  <div class="row d-flex justify-content-center" style="width:100%;">
    <?php foreach ($shoes as $shoe): ?>
    <div class="col-lg-3 box">
        <img class="" src="img/sepatu/<?php echo $shoe['Asset']; ?>" onclick="window.location='detail-beli.php?kode_sepatu=<?php echo $shoe['Nama_Produk']; ?>';">
        <p><?php echo $shoe['Nama_Produk']; ?> <br>Rp. <?php echo number_format($shoe['Harga'], 0, ',', '.'); ?></p>
    </div>
    <?php endforeach; ?>
  </div>
</div>
<?php } else {?>
<?php $categories = getCategories(); ?>

<div class="conta">
  <h1 class="kole">KATEGORI</h1>
</div>
<div class="container" style="margin-bottom: 150px">
    <div class="row justify-content-center">
        <?php foreach ($categories as $category): ?>
          <div class="col-sm-12 col-md-5 col-lg-4 ms-6 box">
            <img src="img/sepatu/<?php echo $category['Asset']; ?>" alt="Gambar <?php echo $category['Nama_Kategori']; ?>" onclick="window.location='kategori.php?kode_sepatu=<?php echo $category['Kode_Kategori']; ?>';">
            <p><?php echo strtoupper($category['Nama_Kategori']); ?></p>
          </div>
        <?php endforeach; ?>
    </div>
</div>
<?php }?>
<!-- Features Section -->
<section class="features text-center">
    <div class="container">
        <div class="row">
            <div class="col feature">
                <img src="img/bxs_like.png" alt="Layanan Prima">
                <h4>Layanan Prima</h4>
            </div>
            <div class="col feature">
                <img src="img/tdesign_money.png" alt="Garansi Uang Kembali">
                <h4>Garansi Uang Kembali</h4>
            </div>
            <div class="col feature">
                <img src="img/ph_gift.png" alt="Packaging Exclusive">
                <h4>Packaging Exclusive</h4>
            </div>
        </div>
    </div>
</section>

<div class="line">
        <div class="horizontal-line"></div>
    </div>

<!-- Footer -->
<footer class="footer text-center text-md-start">
    <div class="container">
        <div class="row">
            <div class="col-md-6 pbawah">
                <img src="img/logo aether 1.png" alt="Aether Logo">
                <p>Aether Footwear, perusahaan sepatu lokal yang berdiri pada tahun 2024 di Surabaya, bertujuan untuk 
                    menjadi merek yang meringankan langkah banyak orang dan meninggalkan jejak yang baik. Aether Footwear 
                    bangga menjadi merek sepatu lokal yang mencerminkan keahlian dan kualitas khas Indonesia. Dengan 
                    mengidentifikasi dirinya sebagai merek sepatu smart casual, Aether Footwear menawarkan beragam produk 
                    mulai dari sepatu formal, sneakers, sepatu olahraga hingga flatshoes yang melengkapi penampilan. 
                    Aether Footwear meyakini bahwa setiap individu memiliki kesempatan yang sama untuk menciptakan sejarah, 
                    dan dengan memilih sepatu lokal mereka, mereka juga mendukung pertumbuhan industri sepatu dalam negeri.</p>
            </div>
            <div class="col-md-6">
                <h1>Hubungi Kami</h1>
                <h2>Admin: <br>08810268272768</h2>
                <h2>Email: <br>AetherFootwear@gmail.com</h2>
                <div class="d-flex justify-content-center justify-content-md-start">
                    <a href="#" class="me-3">
                        <img src="img/insta.png" alt="Instagram" onclick="window.location='https://www.instagram.com/';">
                    </a>
                    <a href="#" class="me-3">
                        <img src="img/tiktok.png" alt="TikTok" onclick="window.location='https://www.tiktok.com/explore';">
                    </a>
                    <a href="#" class="me-3">
                        <img src="img/wa.png" alt="WhatsApp" onclick="window.location='https://wa.me/628810268272768';">
                    </a>
                    <a href="#" class="me-3">
                        <img src="img/mail.png" alt="Mail" onclick="window.location='https://mail.google.com/mail/u/0/?view=cm&tf=1&fs=1&to=aetherfootwear@gmail.com';">
                    </a>
                </div>
            </div>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
