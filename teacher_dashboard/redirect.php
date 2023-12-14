<?php
include_once('../connection/connection.php');

$complaint_category = $_POST['complaint_category'];
$complaint_type = $_POST['complaint_type'];
$complaint_department = $_POST['complaint_department'];
$complaint_name = $_POST['name'];
$photo = $_POST['image'];
$description = $_POST['description'];
$complain_id = $_POST['complaint'];


$sql = "INSERT INTO complain (category, type, department, nature, image, complain_description, complain_user) 
VALUES (?, ?, ?, ?, ?, ?, ?)";

$stmt = $con->prepare($sql);

$stmt->bind_param("sssssss", $complaint_category, $complaint_type, $complaint_department, $complaint_name, $photo, $description, $complain_id);

if ($stmt->execute()) {
    $selectQuery = "SELECT complain_user FROM complain WHERE id = LAST_INSERT_ID()";
    $selectExe = mysqli_query($con, $selectQuery);
    if ($selectExe) {
        $row = mysqli_fetch_assoc($selectExe);
        $complain_user = $row['complain_user'];
        echo "Complain User: " . $complain_user;
    } else {
        echo "Error executing query: " . mysqli_error($con);
    }
  
    header("Location: ../teacher_dashboard/make_complaint.php?complaint_submitted=true");

} else {
  echo "Error: " . $stmt->error;
}

$stmt->close();
$con->close();
?>