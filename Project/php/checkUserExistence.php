<?php
/* This file makes calls the appropriate queries in the database to validate if the user exists or not,
*based on those results it will return a 0 for false or a 1 for true, which is then handled by javascript*/

	$db_connection = oci_connect('DBadmin', 'dbadmin', 'localhost/petloversdbXDB');
	$result;
	$dataToReceive = file_get_contents('php://input');	
	$dataToReceive = json_decode($dataToReceive,true);
	$username = $dataToReceive['dataToSend'][0];
	$password = $dataToReceive['dataToSend'][1];
	
	if(!$db_connection){                                    /* checks if connection with the database works */
		exit ("Server could not connect to database");
	}
	
	$sqlVariableCheckUser = 'BEGIN :result := usuario_package.findUsers(:username, :password);END;';
	
	$dataToReceiveCheckUser = oci_parse($db_connection, $sqlVariableCheckUser);
	
	oci_bind_by_name($dataToReceiveCheckUser,':username', $username);
	oci_bind_by_name($dataToReceiveCheckUser,':password', $password);
	oci_bind_by_name($dataToReceiveCheckUser,':result',$result);
	
	oci_execute($dataToReceiveCheckUser);
	$result = (int)$result;
	
	if($result == 1){
		session_start();
		$_SESSION['name'] = $username;
	}
?>