<?php
session_start();

include("../function.php");
if (!isset($_SESSION['admin']) || $_SESSION['admin'] != true) {
    header("Location: ../index.php");
    exit;
}

// Pagination logic
$limit = 20; // Number of entries to show in a page
if (isset($_GET["page"])) {
    $page = $_GET["page"];
} else {
    $page = 1;
}
$start_from = ($page - 1) * $limit;

// Fetch data from database
$conn = connection();
$sql = "SELECT * FROM tabel_sepatu LIMIT $start_from, $limit";
$result = $conn->query($sql);

// Count total records for pagination
$sql_total = "SELECT COUNT(*) FROM tabel_sepatu";
$result_total = $conn->query($sql_total);
$row_total = $result_total->fetch_row();
$total_records = $row_total[0];
$total_pages = ceil($total_records / $limit);

$conn->close();
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DashBoard Admin</title>
    <link rel="icon" href="../img/aether logo 1.png" type="image/png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/dashstyle.css">
</head>

<body class="budy">
    <!-- Sidebar -->
    <div id="sidebar" class="sidebar">
        <div class="side-header">
            <img src="../img/admin.png" class="admin-img">
            <h5 style="margin-top:10px;">Halo, Admin</h5>
        </div>
        <br>
        <a href="dashboard-1.php" class="pressed"><i class="fa-solid fa-house"></i>&nbsp Dashboard</a>
        <a href="dashboard-2.php"><i class="fa-solid fa-shoe-prints"></i>&nbsp Sepatu</a>
        <a href="dashboard-3.php"><i class="fa-solid fa-users-gear"></i>&nbsp Users</a>
        <br><br><br>
        <a href="../index.php"><i class="fa-solid fa-earth-americas"></i> Halaman Utama</a>
        <a href="../login.php" onclick="event.preventDefault(); if(confirm('Apakah Anda yakin ingin keluar?')){ window.location.href = '../login.php'; }"><i class="fa-solid fa-power-off"></i> Keluar</a>
    </div>

    <!-- Toggle Button -->
    <button id="sidebarToggle" class="sidebar-toggle-btn">
        <i class="fa fa-bars"></i>
    </button>

    <!-- Page Content -->
    <div id="content" class="main">
        <div class="main1">
            <div class="container-fluid">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h2>Daftar Sepatu</h2>
                    <a href="add-sepatu.php" class="btn btn-success">+ Tambah Sepatu</a>
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th>Kode Produk</th>
                                <th>Kode Kategori</th>
                                <th>Nama Produk</th>
                                <th>Ukuran</th>
                                <th>Gender</th>
                                <th>Harga</th>
                                <th>Stok</th>
                                <th>Asset</th>
                                <th>Deskripsi</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    echo "<tr>
                                    <td>{$row['Kode_Produk']}</td>
                                    <td>{$row['Kode_Kategori']}</td>
                                    <td>" . (strlen($row['Nama_Produk']) > 50 ? substr($row['Nama_Produk'], 0, 50) . '...' : $row['Nama_Produk']) . "</td>
                                    <td>{$row['Ukuran']}</td>
                                    <td>{$row['Gender']}</td>
                                    <td>{$row['Harga']}</td>
                                    <td>{$row['Stok']}</td>
                                    <td><img src='../img/sepatu/{$row['Asset']}' alt='Asset' width='120'></td>
                                    <td>" . (strlen($row['Deskripsi']) > 100 ? substr($row['Deskripsi'], 0, 100) . '...' : $row['Deskripsi']) . "</td>
                                    <td>
                                        <a href='edit-sepatu.php?Kode_Produk={$row['Kode_Produk']}' class='btn btn-primary btn-sm'>Ubah</a>
                                        <a href='delete-sepatu.php?Kode_Produk={$row['Kode_Produk']}' class='btn btn-danger btn-sm'>Hapus</a>
                                    </td>
                                  </tr>";
                                }
                            } else {
                                echo "<tr><td colspan='10' class='text-center'>No records found</td></tr>";
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
                <nav>
                    <ul class="pagination justify-content-center">
                        <?php
                        for ($i = 1; $i <= $total_pages; $i++) {
                            echo "<li class='page-item" . ($page == $i ? " active" : "") . "'><a class='page-link' href='dashboard-2.php?page=" . $i . "'>" . $i . "</a></li>";
                        }
                        ?>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
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
