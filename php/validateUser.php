<?php
if(isset($_POST['user_name']))
{
    session_start();
    $_SESSION['name']=$_POST['user_name'];
    //Storing the name of user in SESSION variable.
    header('location: ../admin.php');
}
?>