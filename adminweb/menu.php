<script type="text/javascript">
/* <![CDATA[ */
SetCookie('didgettingstarted',1);

function setDisplayMenu(idName)
{
    if (idName == '') {
        // '' is news, and etc.    
        idName = 'o';
    }

    if ( idName !=null) {
        closeMenuDiv();
        openMenuDiv(idName);
    } else {
        closeMenuDiv();
    }
}

function clickOpenMenu(idName)
{
	closeMenuDiv();
	openMenuDiv(idName);
}

function closeMenuDiv()
{
	var aObjDiv = document.getElementsByTagName("div");
	var numDiv = aObjDiv.length;

	for(i=0; i < numDiv; i++) 
	{
		var idName = aObjDiv[i].getAttribute("id");
		
		if(idName)
		{
			var isMenu = idName.match(/SubCat/i);
					
			if(isMenu !=null) 
			{				
				document.getElementById(idName).style.visibility = "hidden";
				document.getElementById(idName).style.position = "absolute";
			}
		}
	}

}

function openMenuDiv(idName)
{
	document.getElementById('SubCat_'+idName).style.visibility = "visible";
	document.getElementById('SubCat_'+idName).style.position = "static";
}

</script>

<?php
include "../config/koneksi.php";

if ($_SESSION[leveluser]=='admin'){
  $sql=mysql_query("select * from modul where aktif='Y' order by urutan");
}
else{
  $sql=mysql_query("select * from modul where status='user' and aktif='Y' order by urutan"); 
} 
while ($m=mysql_fetch_array($sql)){  
  if($m[id_modul]==18){
  echo('<div onclick="clickOpenMenu(\'o\'); return false;"><li><a href="#">&#187;'.$m[nama_modul].'</a><li></div>
	<div style="visibility: hidden; position: absolute;" id="SubCat_o">');
	
	    $sql2=mysql_query("select nama_kategori, kategori.id_kategori, kategori_seo,  
                                  count(produk.id_produk) as jml 
                                  from kategori left join produk 
                                  on produk.id_kategori=kategori.id_kategori 
                                  group by nama_kategori");
		 while ($m2=mysql_fetch_array($sql2)){
			echo '<div id="Section_c_ticket" style="cursor: pointer; color: #FFFFFF; font-family: Tahoma; font-size: 10pt;" >
			<a href=?module=produk&id='.$m2[id_kategori].'>&#187; '.$m2[nama_kategori].'&nbsp;('.$m2[jml].')</a></div>'; 
		 }	
		echo('</div>');  	    	 	
	 
  }	else{  	
  		echo '<div ><li><a href='.$m[link].'>&#187;'.$m[nama_modul].'</a></li></div>'; 
  }
}
?>
