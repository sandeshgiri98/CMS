<?php
session_start();

include_once('../connection/connection.php');

$fakeUserID = $_SESSION['fake_user'];
$selectQuery = "SELECT id, category, type, department, nature, image, complain_description, complaint_datetime, complain_user, status, complaint_ticket FROM complain WHERE complain_user = '$fakeUserID' ORDER BY id DESC";
$selectExe = mysqli_query($con, $selectQuery);

// Output the updated table content
$output = '<thead>
    <tr>
        <th style="text-align: center;">S.N.</th>
        <th style="text-align: center;">Date and Time</th>
        <th style="text-align: center;">Timeliness</th>
        <th style="text-align: center;">Category</th>
        <th style="text-align: center;">Type</th>
        <th style="text-align: center;">Ticket Number</th>
        <th style="text-align: center;">Status</th>
        <th style="text-align: center;">Action</th>
    </tr>
</thead>';

$serialNumber = 1;
while ($row = mysqli_fetch_assoc($selectExe)) {
    // Your existing table row code here...

    $serialNumber++;
}

echo $output;
?>
