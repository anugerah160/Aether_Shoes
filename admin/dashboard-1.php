<?php
session_start();

include("../function.php");

// Periksa apakah user adalah admin
if (!isset($_SESSION['admin']) || $_SESSION['admin'] != true) {
    header("Location: ../index.php");
    exit;
}

// Ambil data produk dari database
$conn = connection();
$sql = "SELECT Asset, Nama_Produk, SUM(Stok) AS Total_Stok FROM tabel_sepatu GROUP BY Nama_Produk, Asset";
$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DashBoard Admin</title>
    <link rel="icon" href="../img/aether logo 1.png" type="image/png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/dashstyle.css">
    <link rel="stylesheet" href="../css/login.css">
</head>

<body>

    <!-- Sidebar -->
    <div id="sidebar" class="sidebar">
        <div class="side-header">
            <img src="../img/admin.png" class="admin-img">
            <h5 style="margin-top:10px;">Halo, Admin</h5>
        </div>
        <br>
        <a href="dashboard-1.php" class="pressed"><i class="fa-solid fa-house"></i>&nbsp Dashboard</a>
        <a href="dashboard-2.php"><i class="fa-solid fa-wheat-awn"></i>&nbsp Sepatu</a>
        <a href="dashboard-3.php"><i class="fa-solid fa-users-gear"></i>&nbsp Users</a>
        <br><br><br>
        <a href="../index.php"><i class="fa-solid fa-earth-americas"></i> Halaman Utama</a>
        <a href="../login.php" onclick="event.preventDefault(); if(confirm('Apakah Anda yakin ingin keluar?')){ window.location.href = '../login.php'; }"><i class="fa-solid fa-power-off"></i> Keluar</a>
    </div>

    <button id="sidebarToggle" class="sidebar-toggle-btn">
        <i class="fa-solid fa-bars"></i>
    </button>

    <div id="content" class="main">
        <div class="main1">
            <div class="container-fluid" style="margin-bottom: 100px">
                <div class="row d-flex justify-content-center" style="width:100%;">
                    <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                        <div class="col-lg-3 box justify-content-center ">
                            <img class="ms-4" src="../img/sepatu/<?php echo $row['Asset']; ?>" alt="" height="150" width="150">
                            <p>Stok <?php echo $row['Nama_Produk']; ?></p>
                            <p class="count"><?php echo $row['Total_Stok']; ?></p>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/d31a45e58f.js" crossorigin="anonymous"></script>
    <script>
        const sidebar = document.getElementById('sidebar');
        const content = document.getElementById('content');
        const sidebarToggle = document.getElementById('sidebarToggle');

        function toggleSidebar() {
            sidebar.classList.toggle('sidebar-hidden');
            content.classList.toggle('content-expanded');
        }
        sidebarToggle.addEventListener('click', toggleSidebar);
    </script>
</body>

</html>

<?php
mysqli_close($conn);
?>
