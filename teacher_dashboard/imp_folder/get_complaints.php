<?php
session_start();
include_once('../connection/connection.php');

$fakeUserID = $_SESSION['fake_user'];
$selectQuery = "SELECT id, category, type, department, nature, image, complain_description, complaint_datetime, complain_user, status, complaint_ticket FROM complain WHERE complain_user = '$fakeUserID' ORDER BY id DESC";
$selectExe = mysqli_query($con, $selectQuery);
$numComplaints = mysqli_num_rows($selectExe);
?>

<?php if ($numComplaints > 0): ?>
<table class="table">
    <?php while ($row = mysqli_fetch_assoc($selectExe)): ?>
        <?php
        $statusColor = 'gray'; // Default color
        if ($row['status'] === 'pending') {
            $statusColor = 'rgb(26, 93, 26)'; // Green for pending
        } elseif ($row['status'] === 'in_progress') {
            $statusColor = 'rgb(63, 46, 62)'; // Light dark for in-progress
        } elseif ($row['status'] === 'resolved') {
            $statusColor = 'rgb(254, 0, 0)'; // Red for resolved
        } elseif ($row['status'] === 'discharge') {
            $statusColor = 'rgb(117, 194, 246)'; // Light blue for discharge
        }
        ?>
        <tr>
            <td style="color: rgb(39, 40, 41);"><?php echo $row['category'] ?></td>
            <td class="status-cell">
                <div class="status-circle" style="background-color: <?php echo $statusColor; ?>"></div>
            </td>
        </tr>
    <?php endwhile; ?>
</table>
<?php else: ?>
<div class="no-complaints-message">
    <p>There are no complaints</p>
</div>
<?php endif; ?>
