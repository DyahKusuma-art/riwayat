<?php

$connect= new mysqli("localhost","root", "","riwayat");
if($connect){


}else{
    echo "koneksi gagal ke DB";
    exit();
}

?>