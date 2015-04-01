<?php
	/* Made by Ernesto Lang 3/22/2015 */
	/* The following code is used to receive data from the client-side(JavaScript/HTML), a JSON is sent through JavaScript by using AJAX and 
	 * sending an XMLHTTP request. PHP retrieves the JSON data, decodes into a PHP array equivalent, which is then deconstructed, to insert data
	 * into the appropriate database tables, once this is finished a response is sent back to the client-side application, which should indicate
	 * whether PHP was succesful inserting the data into the database.
	 */	

	$db_connection = oci_connect('PetLoversScheme', 'pet', 'localhost/petloversdbXDB');  /*Used to establish connection between database and server*/																										  
	$finalArray = file_get_contents('php://input');									  /*Data retrieval*/			
	$finalArray = json_decode($finalArray,true); 									  /*JSON decoding*/
	$error;					
	
	$username = $finalArray['finalArray'][0];              /* These variables are the data to be sent to the database */
	$password = $finalArray['finalArray'][1];
	$email = $finalArray['finalArray'][3];
	$name = $finalArray['finalArray'][4];
	$firstLastName = $finalArray['finalArray'][5];
	$secondLastName = $finalArray['finalArray'][6];
	
	$sqlVariableUsuarioTable = 'CALL usuario_package.add_usuario(:username, :password)';  /* SQL statement to send */
	$sqlVariablePersonTable = 'CALL person_package.add_person(:name, :first_ln, :second_ln, :username_person)';
	$sqlVariableEmailTable = 'CALL email_package.add_email(:email)';
	$dataToInsertUsuario = oci_parse($db_connection, $sqlVariableUsuarioTable);                         /* prepares statements to be sent to database */
	$dataToInsertPerson = oci_parse($db_connection, $sqlVariablePersonTable);
	$dataToInsertEmail= oci_parse($db_connection, $sqlVariableEmailTable);
	
	                                     
	if(!$db_connection){                                    /* checks if connection with the database works */
		exit ("Server could not connect to database");
	}
	
	oci_bind_by_name($dataToInsertUsuario, ':username', $username);                    /* binds variables to their string names */
	oci_bind_by_name($dataToInsertUsuario, ':password', $password);
	oci_bind_by_name($dataToInsertEmail, ':email', $email);
	oci_bind_by_name($dataToInsertPerson, ':name', $name);
	oci_bind_by_name($dataToInsertPerson, ':first_ln', $firstLastName);
	oci_bind_by_name($dataToInsertPerson, ':second_ln', $secondLastName);
	oci_bind_by_name($dataToInsertPerson, ':username_person', $username);
	
	
	$arrayOfDataToSend[0] = $dataToInsertUsuario;
	$arrayOfDataToSend[1] = $dataToInsertEmail;
	$arrayOfDataToSend[2] = $dataToInsertPerson;
	
	foreach ($arrayOfDataToSend as $value){
		oci_execute($value);
		if(oci_error($value)['code'] == 00001){
			oci_rollback($db_connection);
			exit ("The username or email you have entered already exists");
		} else if (oci_error() != false){
			oci_rollback($db_connection);
			exit ("An error has occured with the database");
		}
			
	}
	exit ("Account succesfully created");
	oci_close($db_connection);
	
?>