<?php
	$connection = oci_connect('PetLoversScheme', 'pet', 'localhost/petloversdbXDB');
	echo file_get_contents("php://input");
	if(!$connection){
		$e = oci_error();
		trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
	}
	else {
		echo "Connection Established";
	}
	
?>