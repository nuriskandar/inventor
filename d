[33mcommit ba5318a18641ed24597e2f997813314cc707069c[m
Author: Tedi Setiawan <tdi.setiawan@gmail.com>
Date:   Mon Feb 4 02:10:56 2013 +0700

    ketiga

[1mdiff --git a/config/class_paging.php b/config/class_paging.php[m
[1mnew file mode 100644[m
[1mindex 0000000..a21d818[m
[1m--- /dev/null[m
[1m+++ b/config/class_paging.php[m
[36m@@ -0,0 +1,195 @@[m
[32m+[m[32m<?php[m
[32m+[m[32m// class paging untuk halaman administrator[m
[32m+[m[32mclass Paging{[m
[32m+[m[32m// Fungsi untuk mencek halaman dan posisi data[m
[32m+[m[32mfunction cariPosisi($batas){[m
[32m+[m[32mif(empty($_GET[halaman])){[m
[32m+[m	[32m$posisi=0;[m
[32m+[m	[32m$_GET[halaman]=1;[m
[32m+[m[32m}[m
[32m+[m[32melse{[m
[32m+[m	[32m$posisi = ($_GET[halaman]-1) * $batas;[m
[32m+[m[32m}[m
[32m+[m[32mreturn $posisi;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// Fungsi untuk menghitung total halaman[m
[32m+[m[32mfunction jumlahHalaman($jmldata, $batas){[m
[32m+[m[32m$jmlhalaman = ceil($jmldata/$batas);[m
[32m+[m[32mreturn $jmlhalaman;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// Fungsi untuk link halaman 1,2,3 (untuk admin)[m
[32m+[m[32mfunction navHalaman($halaman_aktif, $jmlhalaman){[m
[32m+[m[32m$link_halaman = "";[m
[32m+[m
[32m+[m[32m// Link halaman 1,2,3, ...[m
[32m+[m[32mfor ($i=1; $i<=$jmlhalaman; $i++){[m
[32m+[m[32m  if ($i == $halaman_aktif){[m
[32m+[m[32m    $link_halaman .= "<b>$i</b> | ";[m
[32m+[m[32m  }[m
[32m+[m[32melse{[m
[32m+[m[32m  $link_halaman .= "<a href=$_SERVER[PHP_SELF]?module=$_GET[module]&halaman=$i>$i</a> | ";[m
[32m+[m[32m}[m
[32m+[m[32m$link_halaman .= " ";[m
[32m+[m[32m}[m
[32m+[m[32mreturn $link_halaman;[m
[32m+[m[32m}[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m[32m// class paging untuk halaman produk (menampilkan semua produk)[m[41m [m
[32m+[m[32mclass Paging2{[m
[32m+[m[32m// Fungsi untuk mencek halaman dan posisi data[m
[32m+[m[32mfunction cariPosisi($batas){[m
[32m+[m[32mif(empty($_GET[halproduk])){[m
[32m+[m	[32m$posisi=0;[m
[32m+[m	[32m$_GET[halproduk]=1;[m
[32m+[m[32m}[m
[32m+[m[32melse{[m
[32m+[m	[32m$posisi = ($_GET[halproduk]-1) * $batas;[m
[32m+[m[32m}[m
[32m+[m[32mreturn $posisi;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// Fungsi untuk menghitung total halaman[m
[32m+[m[32mfunction jumlahHalaman($jmldata, $batas){[m
[32m+[m[32m$jmlhalaman = ceil($jmldata/$batas);[m
[32m+[m[32mreturn $jmlhalaman;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// Fungsi untuk link halaman 1,2,3[m[41m [m
[32m+[m[32mfunction navHalaman($halaman_aktif, $jmlhalaman){[m
[32m+[m[32m$link_halaman = "";[m
[32m+[m
[32m+[m[32m// Link halaman 1,2,3, ...[m
[32m+[m[32mfor ($i=1; $i<=$jmlhalaman; $i++){[m
[32m+[m[32m  if ($i == $halaman_aktif){[m
[32m+[m[32m    $link_halaman .= "<b>$i</b> | ";[m
[32m+[m[32m  }[m
[32m+[m[32melse{[m
[32m+[m[32m  $link_halaman .= "<a href=halproduk-$i.html>$i</a> | ";[m
[32m+[m[32m}[m
[32m+[m[32m$link_halaman .= " ";[m
[32m+[m[32m}[m
[32m+[m[32mreturn $link_halaman;[m
[32m+[m[32m}[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m[32m// class paging untuk halaman kategori (menampilkan semua kategori)[m
[32m+[m[32mclass Paging3{[m
[32m+[m[32m// Fungsi untuk mencek halaman dan posisi data[m
[32m+[m[32mfunction cariPosisi($batas){[m
[32m+[m[32mif(empty($_GET['halkategori'])){[m
[32m+[m	[32m$posisi=0;[m
[32m+[m	[32m$_GET['halkategori']=1;[m
[32m+[m[32m}[m
[32m+[m[32melse{[m
[32m+[m	[32m$posisi = ($_GET['halkategori']-1) * $batas;[m
[32m+[m[32m}[m
[32m+[m[32mreturn $posisi;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// Fungsi untuk menghitung total halaman[m
[32m+[m[32mfunction jumlahHalaman($jmldata, $batas){[m
[32m+[m[32m$jmlhalaman = ceil($jmldata/$batas);[m
[32m+[m[32mreturn $jmlhalaman;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// Fungsi untuk link halaman 1,2,3[m[41m [m
[32m+[m[32mfunction navHalaman($halaman_aktif, $jmlhalaman){[m
[32m+[m[32m$link_halaman = "";[m
[32m+[m[32m// Link halaman 1,2,3, ...[m
[32m+[m[32mfor ($i=1; $i<=$jmlhalaman; $i++){[m
[32m+[m[32m  if ($i == $halaman_aktif){[m
[32m+[m[32m    $link_halaman .= "<b>$i</b> | ";[m
[32m+[m[32m  }[m
[32m+[m[32melse{[m
[32m+[m[32m  $link_halaman .= "<a href=halkategori-$_GET[id]-$i.html>$i</a> | ";[m
[32m+[m[32m}[m
[32m+[m[32m$link_halaman .= " ";[m
[32m+[m[32m}[m
[32m+[m[32mreturn $link_halaman;[m
[32m+[m[32m}[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m[32m// class paging untuk halaman agenda (menampilkan semua agenda)[m[41m [m
[32m+[m[32mclass Paging4{[m
[32m+[m[32m// Fungsi untuk mencek halaman dan posisi data[m
[32m+[m[32mfunction cariPosisi($batas){[m
[32m+[m[32mif(empty($_GET[halagenda])){[m
[32m+[m	[32m$posisi=0;[m
[32m+[m	[32m$_GET[halagenda]=1;[m
[32m+[m[32m}[m
[32m+[m[32melse{[m
[32m+[m	[32m$posisi = ($_GET[halagenda]-1) * $batas;[m
[32m+[m[32m}[m
[32m+[m[32mreturn $posisi;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// Fungsi untuk menghitung total halaman[m
[32m+[m[32mfunction jumlahHalaman($jmldata, $batas){[m
[32m+[m[32m$jmlhalaman = ceil($jmldata/$batas);[m
[32m+[m[32mreturn $jmlhalaman;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// Fungsi untuk link halaman 1,2,3[m[41m [m
[32m+[m[32mfunction navHalaman($halaman_aktif, $jmlhalaman){[m
[32m+[m[32m$link_halaman = "";[m
[32m+[m
[32m+[m[32m// Link halaman 1,2,3, ...[m
[32m+[m[32mfor ($i=1; $i<=$jmlhalaman; $i++){[m
[32m+[m[32m  if ($i == $halaman_aktif){[m
[32m+[m[32m    $link_halaman .= "<b>$i</b> | ";[m
[32m+[m[32m  }[m
[32m+[m[32melse{[m
[32m+[m[32m  $link_halaman .= "<a href=halagenda-$i.html>$i</a> | ";[m
[32m+[m[32m}[m
[32m+[m[32m$link_halaman .= " ";[m
[32m+[m[32m}[m
[32m+[m[32mreturn $link_halaman;[m
[32m+[m[32m}[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m[32m// class paging untuk halaman download (menampilkan semua download)[m[41m [m
[32m+[m[32mclass Paging5{[m
[32m+[m[32m// Fungsi untuk mencek halaman dan posisi data[m
[32m+[m[32mfunction cariPosisi($batas){[m
[32m+[m[32mif(empty($_GET[haldownload])){[m
[32m+[m	[32m$posisi=0;[m
[32m+[m	[32m$_GET[haldownload]=1;[m
[32m+[m[32m}[m
[32m+[m[32melse{[m
[32m+[m	[32m$posisi = ($_GET[haldownload]-1) * $batas;[m
[32m+[m[32m}[m
[32m+[m[32mreturn $posisi;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// Fungsi untuk menghitung total halaman[m
[32m+[m[32mfunction jumlahHalaman($jmldata, $batas){[m
[32m+[m[32m$jmlhalaman = ceil($jmldata/$batas);[m
[32m+[m[32mreturn $jmlhalaman;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// Fungsi untuk link halaman 1,2,3[m[41m [m
[32m+[m[32mfunction navHalaman($halaman_aktif, $jmlhalaman){[m
[32m+[m[32m$link_halaman = "";[m
[32m+[m
[32m+[m[32m// Link halaman 1,2,3, ...[m
[32m+[m[32mfor ($i=1; $i<=$jmlhalaman; $i++){[m
[32m+[m[32m  if ($i == $halaman_aktif){[m
[32m+[m[32m    $link_halaman .= "<b>$i</b> | ";[m
[32m+[m[32m  }[m
[32m+[m[32melse{[m
[32m+[m[32m  $link_halaman .= "<a href=haldownload-$i.html>$i</a> | ";[m
[32m+[m[32m}[m
[32m+[m[32m$link_halaman .= " ";[m
[32m+[m[32m}[m
[32m+[m[32mreturn $link_halaman;[m
[32m+[m[32m}[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m?>[m
[1mdiff --git a/config/fungsi_autolink.php b/config/fungsi_autolink.php[m
[1mnew file mode 100644[m
[1mindex 0000000..69cc574[m
[1m--- /dev/null[m
[1m+++ b/config/fungsi_autolink.php[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m<?php[m
[32m+[m[32mfunction autolink ($str){[m
[32m+[m[32m  $str = eregi_replace("([[:space:]])((f|ht)tps?:\/\/[a-z0-9~#%@\&:=?+\/\.,_-]+[a-z0-9~#%@\&=?+\/_.;-]+)", "\\1<a href=\"\\2\" target=\"_blank\">\\2</a>", $str); //http[m
[32m+[m[32m  $str = eregi_replace("([[:space:]])(www\.[a-z0-9~#%@\&:=?+\/\.,_-]+[a-z0-9~#%@\&=?+\/_.;-]+)", "\\1<a href=\"http://\\2\" target=\"_blank\">\\2</a>", $str); // www.[m
[32m+[m[32m  $str = eregi_replace("([[:space:]])([_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,3})","\\1<a href=\"mailto:\\2\">\\2</a>", $str); // mail[m
[32m+[m[32m  $str = eregi_replace("^((f|ht)tp:\/\/[a-z0-9~#%@\&:=?+\/\.,_-]+[a-z0-9~#%@\&=?+\/_.;-]+)", "<a href=\"\\1\" target=\"_blank\">\\1</a>", $str); //http[m
[32m+[m[32m  $str = eregi_replace("^(www\.[a-z0-9~#%@\&:=?+\/\.,_-]+[a-z0-9~#%@\&=?+\/_.;-]+)", "<a href=\"http://\\1\" target=\"_blank\">\\1</a>", $str); // www.[m
[32m+[m[32m  $str = eregi_replace("^([_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,3})","<a href=\"mailto:\\1\">\\1</a>", $str); // mail[m
[32m+[m[32m  return $str;[m
[32m+[m[32m}[m
[32m+[m[32m?>[m
[1mdiff --git a/config/fungsi_badword.php b/config/fungsi_badword.php[m
[1mnew file mode 100644[m
[1mindex 0000000..f229f19[m
[1m--- /dev/null[m
[1m+++ b/config/fungsi_badword.php[m
[36m@@ -0,0 +1,9 @@[m
[32m+[m[32m<?php[m
[32m+[m[32mfunction sensor($teks){[m
[32m+[m[32m    $w = mysql_query("SELECT * FROM katajelek");[m
[32m+[m[32m    while ($r = mysql_fetch_array($w)){[m
[32m+[m[32m        $teks = str_ireplace($r[kata], $r[ganti], $teks);[m[41m       [m
[32m+[m[32m    }[m
[32m+[m[32m    return $teks;[m
[32m+[m[32m}[m[41m  [m
[32m+[m[32m?>[m
[1mdiff --git a/config/fungsi_combobox.php b/config/fungsi_combobox.php[m
[1mnew file mode 100644[m
[1mindex 0000000..dd4dde8[m
[1m--- /dev/null[m
[1m+++ b/config/fungsi_combobox.php[m
[36m@@ -0,0 +1,75 @@[m
[32m+[m[32m<?php[m
[32m+[m[32mfunction combotgl($awal, $akhir, $var, $terpilih){[m
[32m+[m[32m  echo "<select name=$var>";[m
[32m+[m[32m  for ($i=$awal; $i<=$akhir; $i++){[m
[32m+[m[32m    $lebar=strlen($i);[m
[32m+[m[32m    switch($lebar){[m
[32m+[m[32m      case 1:[m
[32m+[m[32m      {[m
[32m+[m[32m        $g="0".$i;[m
[32m+[m[32m        break;[m[41m     [m
[32m+[m[32m      }[m
[32m+[m[32m      case 2:[m
[32m+[m[32m      {[m
[32m+[m[32m        $g=$i;[m
[32m+[m[32m        break;[m[41m     [m
[32m+[m[32m      }[m[41m      [m
[32m+[m[32m    }[m[41m  [m
[32m+[m[32m    if ($i==$terpilih)[m
[32m+[m[32m      echo "<option value=$g selected>$g</option>";[m
[32m+[m[32m    else[m
[32m+[m[32m      echo "<option value=$g>$g</option>";[m
[32m+[m[32m  }[m
[32m+[m[32m  echo "</select> ";[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction combobln($awal, $akhir, $var, $terpilih){[m
[32m+[m[32m  echo "<select name=$var>";[m
[32m+[m[32m  for ($bln=$awal; $bln<=$akhir; $bln++){[m
[32m+[m[32m    $lebar=strlen($bln);[m
[32m+[m[32m    switch($lebar){[m
[32m+[m[32m      case 1:[m
[32m+[m[32m      {[m
[32m+[m[32m        $b="0".$bln;[m
[32m+[m[32m        break;[m[41m     [m
[32m+[m[32m      }[m
[32m+[m[32m      case 2:[m
[32m+[m[32m      {[m
[32m+[m[32m        $b=$bln;[m
[32m+[m[32m        break;[m[41m     [m
[32m+[m[32m      }[m[41m      [m
[32m+[m[32m    }[m[41m  [m
[32m+[m[32m      if ($bln==$terpilih)[m
[32m+[m[32m         echo "<option value=$b selected>$b</option>";[m
[32m+[m[32m      else[m
[32m+[m[32m        echo "<option value=$b>$b</option>";[m
[32m+[m[32m  }[m
[32m+[m[32m  echo "</select> ";[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction combothn($awal, $akhir, $var, $terpilih){[m
[32m+[m[32m  echo "<select name=$var>";[m
[32m+[m[32m  for ($i=$awal; $i<=$akhir; $i++){[m
[32m+[m[32m    if ($i==$terpilih)[m
[32m+[m[32m      echo "<option value=$i selected>$i</option>";[m
[32m+[m[32m    else[m
[32m+[m[32m      echo "<option value=$i>$i</option>";[m
[32m+[m[32m  }[m
[32m+[m[32m  echo "</select> ";[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction combonamabln($awal, $akhir, $var, $terpilih){[m
[32m+[m[32m  $nama_bln=array(1=> "Januari", "Februari", "Maret", "April", "Mei",[m[41m [m
[32m+[m[32m                      "Juni", "Juli", "Agustus", "September",[m[41m [m
[32m+[m[32m                      "Oktober", "November", "Desember");[m
[32m+[m[32m  echo "<select name=$var>";[m
[32m+[m[32m  for ($bln=$awal; $bln<=$akhir; $bln++){[m
[32m+[m[32m      if ($bln==$terpilih)[m
[32m+[m[32m         echo "<option value=$bln selected>$nama_bln[$bln]</option>";[m
[32m+[m[32m      else[m
[32m+[m[32m        echo "<option value=$bln>$nama_bln[$bln]</option>";[m
[32m+[m[32m  }[m
[32m+[m[32m  echo "</select> ";[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m?>[m
[1mdiff --git a/config/fungsi_indotgl.php b/config/fungsi_indotgl.php[m
[1mnew file mode 100644[m
[1mindex 0000000..a20c04a[m
[1m--- /dev/null[m
[1m+++ b/config/fungsi_indotgl.php[m
[36m@@ -0,0 +1,49 @@[m
[32m+[m[32m<?php[m
[32m+[m	[32mfunction tgl_indo($tgl){[m
[32m+[m			[32m$tanggal = substr($tgl,8,2);[m
[32m+[m			[32m$bulan = getBulan(substr($tgl,5,2));[m
[32m+[m			[32m$tahun = substr($tgl,0,4);[m
[32m+[m			[32mreturn $tanggal.' '.$bulan.' '.$tahun;[m[41m		 [m
[32m+[m	[32m}[m[41m	[m
[32m+[m
[32m+[m	[32mfunction getBulan($bln){[m
[32m+[m				[32mswitch ($bln){[m
[32m+[m					[32mcase 1:[m[41m [m
[32m+[m						[32mreturn "Januari";[m
[32m+[m						[32mbreak;[m
[32m+[m					[32mcase 2:[m
[32m+[m						[32mreturn "Februari";[m
[32m+[m						[32mbreak;[m
[32m+[m					[32mcase 3:[m
[32m+[m						[32mreturn "Maret";[m
[32m+[m						[32mbreak;[m
[32m+[m					[32mcase 4:[m
[32m+[m						[32mreturn "April";[m
[32m+[m						[32mbreak;[m
[32m+[m					[32mcase 5:[m
[32m+[m						[32mreturn "Mei";[m
[32m+[m						[32mbreak;[m
[32m+[m					[32mcase 6:[m
[32m+[m						[32mreturn "Juni";[m
[32m+[m						[32mbreak;[m
[32m+[m					[32mcase 7:[m
[32m+[m						[32mreturn "Juli";[m
[32m+[m						[32mbreak;[m
[32m+[m					[32mcase 8:[m
[32m+[m						[32mreturn "Agustus";[m
[32m+[m						[32mbreak;[m
[32m+[m					[32mcase 9:[m
[32m+[m						[32mreturn "September";[m
[32m+[m						[32mbreak;[m
[32m+[m					[32mcase 10:[m
[32m+[m						[32mreturn "Oktober";[m
[32m+[m						[32mbreak;[m
[32m+[m					[32mcase 11:[m
[32m+[m						[32mreturn "November";[m
[32m+[m						[32mbreak;[m
[32m+[m					[32mcase 12:[m
[32m+[m						[32mreturn "Desember";[m
[32m+[m						[32mbreak;[m
[32m+[m				[32m}[m
[32m+[m			[32m}[m[41m [m
[32m+[m[32m?>[m
[1mdiff --git a/config/fungsi_rupiah.php b/config/fungsi_rupiah.php[m
[1mnew file mode 100644[m
[1mindex 0000000..ca07660[m
[1m--- /dev/null[m
[1m+++ b/config/fungsi_rupiah.php[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m<?php[m
[32m+[m[32mfunction format_rupiah($angka){[m
[32m+[m[32m  $rupiah=number_format($angka,0,',','.');[m
[32m+[m[32m  return $rupiah;[m
[32m+[m[32m}[m
[32m+[m[32m?>[m[41m [m
[1mdiff --git a/config/fungsi_seo.php b/config/fungsi_seo.php[m
[1mnew file mode 100644[m
[1mindex 0000000..c9ec185[m
[1m--- /dev/null[m
[1m+++ b/config/fungsi_seo.php[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m<?php[m
[32m+[m[32mfunction seo_title($s) {[m
[32m+[m[32m    $c = array (' ');[m
[32m+[m[32m    $d = array ('-','/','\\',',','.','#',':',';','\'','"','[',']','{','}',')','(','|','`','~','!','@','%','$','^','&','*','=','?','+');[m
[32m+[m
[32m+[m[32m    $s = str_replace($d, '', $s); // Hilangkan karakter yang telah disebutkan di array $d[m
[32m+[m[41m    [m
[32m+[m[32m    $s = strtolower(str_replace($c, '-', $s)); // Ganti spasi dengan tanda - dan ubah hurufnya menjadi kecil semua[m
[32m+[m[32m    return $s;[m
[32m+[m[32m}[m
[32m+[m[32m?>[m
[1mdiff --git a/config/fungsi_thumb.php b/config/fungsi_thumb.php[m
[1mnew file mode 100644[m
[1mindex 0000000..0a10dbb[m
[1m--- /dev/null[m
[1m+++ b/config/fungsi_thumb.php[m
[36m@@ -0,0 +1,50 @@[m
[32m+[m[32m<?php[m
[32m+[m[32mfunction UploadImage($fupload_name){[m
[32m+[m[32m  //direktori gambar[m
[32m+[m[32m  $vdir_upload = "../../../foto_produk/";[m
[32m+[m[32m  $vfile_upload = $vdir_upload . $fupload_name;[m
[32m+[m
[32m+[m[32m  //Simpan gambar dalam ukuran sebenarnya[m
[32m+[m[32m  move_uploaded_file($_FILES["fupload"]["tmp_name"], $vfile_upload);[m
[32m+[m
[32m+[m[32m  //identitas file asli[m
[32m+[m[32m  $im_src = imagecreatefromjpeg($vfile_upload);[m
[32m+[m[32m  $src_width = imageSX($im_src);[m
[32m+[m[32m  $src_height = imageSY($im_src);[m
[32m+[m
[32m+[m[32m  //Simpan dalam versi small 110 pixel[m
[32m+[m[32m  //Set ukuran gambar hasil perubahan[m
[32m+[m[32m  $dst_width = 55;[m
[32m+[m[32m  $dst_height = ($dst_width/$src_width)*$src_height;[m
[32m+[m
[32m+[m[32m  //proses perubahan ukuran[m
[32m+[m[32m  $im = imagecreatetruecolor($dst_width,$dst_height);[m
[32m+[m[32m  imagecopyresampled($im, $im_src, 0, 0, 0, 0, $dst_width, $dst_height, $src_width, $src_height);[m
[32m+[m
[32m+[m[32m  //Simpan gambar[m
[32m+[m[32m  imagejpeg($im,$vdir_upload . "small_" . $fupload_name);[m
[32m+[m[41m  [m
[32m+[m[32m  //Hapus gambar di memori komputer[m
[32m+[m[32m  imagedestroy($im_src);[m
[32m+[m[32m  imagedestroy($im);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction UploadBanner($fupload_name){[m
[32m+[m[32m  //direktori banner[m
[32m+[m[32m  $vdir_upload = "../../../foto_banner/";[m
[32m+[m[32m  $vfile_upload = $vdir_upload . $fupload_name;[m
[32m+[m
[32m+[m[32m  //Simpan gambar dalam ukuran sebenarnya[m
[32m+[m[32m  move_uploaded_file($_FILES["fupload"]["tmp_name"], $vfile_upload);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction UploadFile($fupload_name){[m
[32m+[m[32m  //direktori file[m
[32m+[m[32m  $vdir_upload = "../../../files/";[m
[32m+[m[32m  $vfile_upload = $vdir_upload . $fupload_name;[m
[32m+[m
[32m+[m[32m  //Simpan gambar dalam ukuran sebenarnya[m
[32m+[m[32m  move_uploaded_file($_FILES["fupload"]["tmp_name"], $vfile_upload);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m?>[m
[1mdiff --git a/config/koneksi.php b/config/koneksi.php[m
[1mnew file mode 100644[m
[1mindex 0000000..2007fc6[m
[1m--- /dev/null[m
[1m+++ b/config/koneksi.php[m
[36m@@ -0,0 +1,10 @@[m
[32m+[m[32m<?php[m
[32m+[m[32m$server = "localhost";[m
[32m+[m[32m$username = "root";[m
[32m+[m[32m$password = "admin";[m
[32m+[m[32m$database = "inventor";[m
[32m+[m
[32m+[m[32m// Koneksi dan memilih database di server[m
[32m+[m[32mmysql_connect($server,$username,$password) or die("Koneksi gagal");[m
[32m+[m[32mmysql_select_db($database) or die("Database tidak bisa dibuka");[m
[32m+[m[32m?>[m
[1mdiff --git a/config/library.php b/config/library.php[m
[1mnew file mode 100644[m
[1mindex 0000000..b9973fd[m
[1m--- /dev/null[m
[1m+++ b/config/library.php[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m<?php[m
[32m+[m[32m//date_default_timezone_set('Asia/Jakarta'); // PHP 6 mengharuskan penyebutan timezone.[m
[32m+[m[32m$seminggu = array("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");[m
[32m+[m[32m$hari = date("w");[m
[32m+[m[32m$hari_ini = $seminggu[$hari];[m
[32m+[m
[32m+[m[32m$tgl_sekarang = date("Ymd");[m
[32m+[m[32m$tgl_skrg     = date("d");[m
[32m+[m[32m$bln_sekarang = date("m");[m
[32m+[m[32m$thn_sekarang = date("Y");[m
[32m+[m[32m$jam_sekarang = date("H:i:s");[m
[32m+[m
[32m+[m[32m$nama_bln=array(1=> "Januari", "Februari", "Maret", "April", "Mei",[m[41m [m
[32m+[m[32m                    "Juni", "Juli", "Agustus", "September",[m[41m [m
[32m+[m[32m                    "Oktober", "November", "Desember");[m
[32m+[m[32m?>[m
