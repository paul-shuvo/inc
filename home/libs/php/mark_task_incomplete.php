<?php

include_once '../../../database/DatabaseConnect.php';

//echo "1 record added";

$TASK_ASSIGNMENT_ID = mysqli_real_escape_string($conn,$_POST['task_assignment_id']);
// $TASK_DONE_QUANTITY = mysqli_real_escape_string($conn,$_POST['done_quantity']);
// $TASK_DONE_QUANTITY += 1;
// $TASK_ASSIGNED_QUANTITY = mysqli_real_escape_string($conn,$_POST['assigned_quantity']);
$DATE_COMPLETED=date("Y-m-d");
// $PASSWORD = mysqli_real_escape_string($conn,$_POST['password']);

$response="";

$query="UPDATE `task_assignment` SET `DATE_COMPLETED` = NULL, `DONE_AMOUNT` = '0' WHERE `task_assignment`.`TASK_ASSIGNMENT_ID` = '$TASK_ASSIGNMENT_ID'";


if (!mysqli_query($conn,$query)) {
  $response =  die('Error: ' . mysqli_error($conn));
  echo $response;
}
else {
  echo "Success: There was an error";
}


    // For Security



mysqli_close($conn);
?>
