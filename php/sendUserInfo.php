<?php
	/* Made by Ernesto Lang 3/22/2015 */
	/* The following code is used to receive data from the client-side(JavaScript/HTML), a JSON is sent through JavaScript by using AJAX and 
	 * sending an XMLHTTP request. PHP retrieves the JSON data, decodes into a PHP array equivalent, which is then deconstructed, to insert data
	 * into the appropriate database tables, once this is finished a response is sent back to the client-side application, which should indicate
	 * whether PHP was succesful inserting the data into the database.
	 */	

	$db_connection = oci_connect('PetLoversScheme', 'pet', 'localhost/petloversdbXDB');  /*Used to establish connection between database and server*/																										  
	$finalArray = file_get_contents('php://input');									  /*Data retrieval*/			
	$finalArray = json_decode($finalArray,true); 
	$error;					/*JSON decoding*/
	echo var_dump($finalArray);
	
	$username = $finalArray['finalArray'][0];
	$password = $finalArray['finalArray'][1];
	$email = $finalArray['finalArray'][3];
	$name = $finalArray['finalArray'][4];
	$firstLastName = $finalArray['finalArray'][5];
	$secondLastName = $finalArray['finalArray'][6];
	
	$sqlVariableAccountsTable = 'CALL usuario_package.add_usuario(:username, :password)';  /* SQL statement to send */
	$dataToInsert = oci_parse($db_connection, $sqlVariableAccountsTable);                         /* prepares statement to be sent to database */
	
	
	                                     
	if(!$db_connection){                                    /* checks if connection with the database works */
		exit ("Server could not connect to database");
	}
	else {
		echo "Connection Established";
	}
	
	oci_bind_by_name($dataToInsert, ':username', $username);                    /* binds variables to their string names */
	oci_bind_by_name($dataToInsert, ':password', $password);
	oci_execute($dataToInsert);
	$error = oci_error($dataToInsert);              /* statement is sent to the database, a print is made to indicate */
			
	if($error == false){
		echo "User created succesfully";
	} else if ($error['code'] ==  0001) {
		oci_close($db_connection);
		exit ("User could not be created, the specified username already exists");
	}
	oci_close($db_connection);
	
?>