<?php

include 'conn.php';

$hasilQuery=$connect->query("SELECT * FROM barang where kategori='topup'");
$hasil = array();

while($potonganData=$hasilQuery-> fetch_assoc()){
    $hasil[]=$potonganData;
}

echo json_encode($hasil);

?>