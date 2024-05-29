<?php
session_start();

// Menghapus semua data sesi
session_unset();
session_destroy();

// Mengarahkan pengguna ke halaman login atau halaman utama
header("Location: index.php");
exit();