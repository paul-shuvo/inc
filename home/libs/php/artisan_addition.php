<?php

include_once '../../../database/DatabaseConnect.php';

//echo "1 record added";

$EMPLOYEE_NAME = mysqli_real_escape_string($conn,$_POST['artisan_name']);
$PASSWORD = mysqli_real_escape_string($conn,$_POST['password']);

$response="";

$query="INSERT INTO `employee` (`EMPLOYEE_PASSWORD`, `EMPLOYEE_PRIVILEGE`, `EMPLOYEE_NAME`) VALUES ('$PASSWORD', '3', '$EMPLOYEE_NAME');";

if (!mysqli_query($conn,$query)) {
  $response =  die('Error: ' . mysqli_error($conn));
  echo $response;
}
else {
  echo 'Success: New Artisan was added.';
}


    // For Security



mysqli_close($conn);
?>
