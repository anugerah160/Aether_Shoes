<?php

function connection(){
    // membuat konekesi ke database system
    $dbServer = 'localhost';
    $dbUser = 'root';
    $dbPass = '';
    $dbName = "sepatu";

    $conn = mysqli_connect($dbServer, $dbUser, $dbPass);

    if (!$conn) {
        die('Koneksi gagal: ');
    }
    //memilih database yang akan dipakai
    mysqli_select_db($conn, $dbName);

    return $conn;
} 

function getCategories(){
    $conn = connection();

    $sql = "SELECT * FROM kategori"; // Sesuaikan nama tabel jika berbeda
    $result = mysqli_query($conn, $sql);

    $shoes = [];

    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $shoes[] = $row;
        }
    }

    mysqli_close($conn);

    return $shoes;
}

function getShoesByCategory($kode_kategori)
{
    $conn = connection();
    $sql = "SELECT tb.Nama_Produk, tb.Harga, k.Nama_Kategori, tb.Asset FROM tabel_sepatu tb, kategori k WHERE tb.Kode_Kategori = k.Kode_Kategori AND tb.Kode_Kategori = '$kode_kategori' group by tb.Nama_Produk";
    $result = mysqli_query($conn, $sql);

    $shoes = [];
    if ($result) {
        while ($row = mysqli_fetch_assoc($result)) {
            $shoes[] = $row;
        }
    }

    mysqli_close($conn);
    return $shoes;
}
function getShoesByGender($gender)
{
    $conn = connection();
    $sql = "SELECT Nama_Produk, Kode_Produk, MAX(Asset) as Asset,  MAX(Harga) as Harga FROM tabel_sepatu WHERE Gender = '$gender' GROUP BY Nama_Produk;";
    $result = mysqli_query($conn, $sql);

    $shoes = [];
    if ($result) {
        while ($row = mysqli_fetch_assoc($result)) {
            $shoes[] = $row;
        }
    }

    mysqli_close($conn);
    return $shoes;
}

function getShoesByNamaProduk($nama_produk) {
    $conn = connection();
    $sql = "SELECT 
                ts.Asset,
                ts.Nama_Produk,
                ts.Harga,
                GROUP_CONCAT(DISTINCT ts.Ukuran ORDER BY ts.Ukuran SEPARATOR ', ') AS Ukuran,
                GROUP_CONCAT(DISTINCT w.Nama_Warna ORDER BY w.Nama_Warna SEPARATOR ', ') AS Warna,
                ts.Stok,
                ts.Deskripsi
            FROM 
                tabel_sepatu ts
            JOIN 
                pilihan_warna pw ON ts.Kode_Produk = pw.Kode_Produk
            JOIN 
                warna w ON pw.Kode_Warna = w.Kode_Warna
            WHERE 
                ts.Nama_Produk = ?
            GROUP BY 
                ts.Asset, ts.Nama_Produk, ts.Harga, ts.Stok, ts.Deskripsi";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $nama_produk);
    $stmt->execute();
    $result = $stmt->get_result();

    $shoes = [];
    if ($result) {
        $shoes = $result->fetch_assoc();
    }

    $stmt->close();
    $conn->close();
    return $shoes;
}
?>