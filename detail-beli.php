<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aether Footwear Official</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="awal">
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
    $nama_produk = $_GET['kode_sepatu'];
    $shoes = getShoesByNamaProduk($nama_produk);

    if ($shoes) {
        $Asset = $shoes['Asset'];
        $Nama_Produk = $shoes['Nama_Produk'];
        $Harga = number_format($shoes['Harga'], 0, '', '.');
        $Ukuran = explode(', ', $shoes['Ukuran']);
        $Warna = explode(', ', $shoes['Warna']);
        $Stok = $shoes['Stok'];
        $Deskripsi = $shoes['Deskripsi'];
?>
        <!-- Hero Section -->
        <section class="hero py-5">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-sm-6 col-md-5 col-lg-5 col-xl-4">
                        <img src="img/sepatu/<?php echo $Asset; ?>" alt="<?php echo $Nama_Produk; ?>" class="img-fluid">
                    </div>
                    <div class="col-sm-6 col-md-7 col-lg-7 col-xl-8 text-md-start">
                        <div class="">
                            <h1 class="text-white" style="font-family: 'Poppins';" ><?php echo $Nama_Produk; ?></h1>
                            <h2 class="lead text-white">Harga:  Rp. <?php echo $Harga; ?></h2>
                        </div>
                        <br><br>
                        <div class="mb-3 col-md-12 col-lg-6" >
                            <h5 for="ukuran" class="mb-3 form-label text-start text-white">Ukuran:</>
                            <div>
                                <?php foreach ($Ukuran as $size) { ?>
                                    <button class="btn btn-outline-secondary "><?php echo $size; ?></button>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="mb-3">
                            <h5 for="warna" class="form-label text-white">Warna:</h5>
                            <div>
                                <?php foreach ($Warna as $color) { ?>
                                    <button class="btn btn-outline-secondary"><?php echo $color; ?></button>
                                <?php } ?>
                            </div>
                        </div>
                        <p class="lead" style="display: block;">Stok: <?php echo $Stok; ?></p><br><br>
                        <div class="mb-3">
                            <div class="input-group" style="width: 100px;">
                                <button class="btn btn-outline-secondary" type="button" id="button-minus">-</button>
                                <input type="text" class="form-control text-center" value="1" id="jumlah" aria-label="Jumlah" aria-describedby="button-minus">
                                <button class="btn btn-outline-secondary" type="button" id="button-plus">+</button>
                            </div>
                        </div>
                        <button class="btn btn-primary">Tambah Keranjang</button>
                        <div class="mt-4">
                            <h5>Deskripsi</h5>
                            <p class="text-start"><?php echo $Deskripsi; ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<?php
    } else {
        echo "<p>Produk tidak ditemukan.</p>";
    }
} else {
    echo "<p>Nama produk tidak diberikan.</p>";
}
?>

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
