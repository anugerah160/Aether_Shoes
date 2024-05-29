<?php
session_start();
include('function.php');

$conn = connection();

// Memeriksa apakah pengguna sudah login
if (!isset($_SESSION['valid'])) {
    header("Location: login.php");
    exit();
}

// Mengambil informasi pengguna dari database berdasarkan email yang disimpan dalam sesi
$email = $_SESSION['valid'];
$stmt = $conn->prepare("SELECT * FROM users WHERE email = ?");
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();

// Memeriksa apakah pengguna ditemukan
if (!$user) {
    echo "Pengguna tidak ditemukan.";
    exit();
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Profile</title>
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>

<div class="container">
  <div class="profile-box">
    <img src="img/account2.png" alt="" class="avatar">
    <h2>Profil Pengguna</h2>
    <table>
      <tr>
        <td>Username :</td>
        <td><?php echo htmlspecialchars($user['username'], ENT_QUOTES, 'UTF-8'); ?></td>
      </tr>
      <tr>
        <td>Nama Lengkap:</td>
        <td><?php echo htmlspecialchars($user['fullname'], ENT_QUOTES, 'UTF-8'); ?></td>
      </tr>
      <tr>
        <td>Umur:</td>
        <td><?php echo htmlspecialchars($user['age'], ENT_QUOTES, 'UTF-8'); ?></td>
      </tr>
      <tr>
        <td>Nomor Handphone:</td>
        <td><?php echo htmlspecialchars($user['no_telephone'], ENT_QUOTES, 'UTF-8'); ?></td>
      </tr>
      <tr>
        <td>Email:</td>
        <td><?php echo htmlspecialchars($user['email'], ENT_QUOTES, 'UTF-8'); ?></td>
      </tr>
    </table>
    <div class="button-container">
      <button onclick="window.location.href='index.php'">Kembali ke Beranda</button>
      <?php if (isset($_SESSION['admin']) && $_SESSION['admin'] == true) {
                    echo '<button onclick="window.location.href=\'admin/dashboard-1.php\'">Kelola Barang</button>';
            }?>
      <button onclick="window.location.href='logout.php'">Logout</button>
    </div>
  </div>
</div>

</body>
</html>
