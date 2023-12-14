<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet"
        href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<style>
#upperArrow {
    width: 2%;
    position: fixed;
    bottom: 5%;
    right: 3%;
}

.sidebar_two {
    position: fixed;
    height: 100%;
    width: 250px;
    right: 0;
    bottom: 0;
    top: 52px;
    y-index: 100;
    background: rgb(255, 250, 244);
    box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}


@media only screen and (max-width: 1200px) {
    .main-content {
        margin-right: 0;
    }

    .sidebar_two {
        display: none;
    }
}

@media only screen and (max-width: 768px) {
    .main-content {
        margin-right: 0;
    }

    .sidebar_two {
        display: none;
    }
}

.side-heading {
    padding: 0.75rem 1rem;
    margin-bottom: 1rem;
    list-style: none;
    background-color: #e9ecef;
    border-radius: 0.25rem;
    text-align: center;
}

.status-circle {
    width: 12px;
    height: 12px;
    border-radius: 50%;
    display: inline-block;
    margin-left: 100px;
    margin-right: 15px;
}

.status-cell {
    vertical-align: middle;
}


.status-cell span {
    visibility: hidden;
}

.no-complaints-message {
    font-size: 18px;
    color: #555;
    text-align: center;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

</style>

<body>
    <?php
    include_once('../connection/connection.php');

    
    if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }

    // Get the 'fake_user' value from the database based on the 'user_id'
    $userId = $_SESSION['user_id']; 
    $selectQuery = "SELECT fake_user FROM register WHERE id = '$userId'"; 
    $selectExe = mysqli_query($con, $selectQuery);
    $row = mysqli_fetch_assoc($selectExe);
    $_SESSION['fake_user'] = $row['fake_user'];

    // Check if the 'user_name' session variable is set
    if (isset($_SESSION['user_name'])) {
        $userName = $_SESSION['user_name'];
        $userType = $_SESSION['role']; // Assuming the role is stored in 'role' session variable
        $fakeUser = $_SESSION['fake_user'];
        // $image = $_SESSION['profile_image'];
    } else {
        header("Location: ../login/login.php");
        exit(); 
    }
    ?>

    <input type="checkbox" id="menu-toggle">
    <div class="sidebar">
        <div class="side-header">
            <p><span>User-ID: <?php echo $row['fake_user']; ?></span></p>
        </div>

        <div class="side-content">
            <div class="profile">
                <?php
        if (isset($_SESSION['fake_user'])) {
        $fakeUserID = $_SESSION['fake_user'];

        $selectQuery = "SELECT id, name, fake_user, profile_image FROM register WHERE fake_user = '$fakeUserID'";
        $selectExe = mysqli_query($con, $selectQuery);

        if (mysqli_num_rows($selectExe) > 0) {
            $row = mysqli_fetch_assoc($selectExe);
            $img = $row['profile_image'];
            $userName = $row['name'];

            // Check if the profile image exists, else use default image
            if ($img && file_exists('../photoes/' . $img)) {
                $profileImageURL = '../photoes/' . $img;
            } else {
                $profileImageURL = '../photoes/user.png'; 
            }
        } else {
            echo "No user found with the specified fake_user ID.";
        }
    } else {
        echo "Session 'fake_user' variable not set or session not started.";
    }
    ?>

                <div class="profile-img bg-img" style="background-image: url('<?php echo $profileImageURL; ?>');"></div>

                <h4><?php echo $userName; ?></h4>
                <small style="text-transform: uppercase"><?php echo $userType; ?></small>
            </div>


            <div class="side-menu">
                <ul>
                    <li>
                        <a href="../student_dashboard/scontent.php">
                            <span class="las la-home"></span>
                            <small>Dashboard</small>
                        </a>
                    </li>
                    <li>
                        <a href="../profile_student/profile_setting.php">
                            <span class="las la-user-alt"></span>
                            <small>Profile</small>
                        </a>
                    </li>
                    <li>
                        <a href="../student_dashboard/make_complaint.php">
                            <span class="las la-envelope"></span>
                            <small>Make Complaint</small>
                        </a>
                    </li>
                    <li>
                        <a href="../student_dashboard/complaint_details.php">
                            <span class="las la-clipboard-list"></span>
                            <small>Complaint Details</small>
                        </a>
                    </li>
                    <!-- <li>
                        <a href="../student_dashboard/userdetails.php">
                            <span class="las la-tasks"></span>
                            <small>User Details</small>
                        </a>
                    </li> -->

                </ul>
            </div>
        </div>
    </div>

    <div class="main-content">

        <header>
            <div class="header-content">
                <label for="menu-toggle">
                    <span class="las la-bars"></span>
                </label>

                <div class="header-menu">
                    <!-- <label for="">
                        <span class="las la-search"></span>
                    </label>

                    <div class="notify-icon">
                        <span class="las la-envelope"></span>
                        <span class="notify">4</span>
                    </div>

                    <div class="notify-icon">
                        <span class="las la-bell"></span>
                        <span class="notify">3</span>
                    </div> -->

                    <div class="user">
                        <div class="bg-img" style="background-image: url(img/1.jpeg)"></div>

                        <a href="../login/logout.php" style="text-decoration: none;">
                            <span class="las la-power-off"></span>
                            <span style="font-size:16px">Logout</span></a>

                    </div>
                </div>
            </div>
        </header>
    </div>

    <!-- ....................................................................... -->
    <?php if (isset($isDashboardPage) && $isDashboardPage): ?>
    <div class="sidebar_two">
        <div class="side-content">
            <div class="side-menu">
                <ul>
                    <li>
                        <p class="side-heading"><b>Complaint Details</b></p>
                    </li>
                </ul>
                <?php
                include_once('../connection/connection.php');
                $fakeUserID = $_SESSION['fake_user'];
                $selectQuery = "SELECT id, category, type, department, nature, image, complain_description, complaint_datetime, complain_user, status, complaint_ticket FROM complain WHERE complain_user = '$fakeUserID' ORDER BY id DESC";
                $selectExe = mysqli_query($con, $selectQuery);
                $numComplaints = mysqli_num_rows($selectExe);
                ?>
                <?php if ($numComplaints > 0): ?>
                <table class="table">
                    <?php
                        while ($row = mysqli_fetch_assoc($selectExe)) {
                            $statusColor = ''; 
                            if ($row['status'] === 'pending') {
                                // green for pending
                                $statusColor = 'rgb(26, 93, 26)';
                            } elseif ($row['status'] === 'in_progress') {
                                // light dark for process
                                $statusColor = 'rgb(63, 46, 62)';
                            } elseif ($row['status'] === 'resolved') {
                                // red for resolved
                                $statusColor = 'rgb(254, 0, 0)';
                            } elseif ($row['status'] === 'discharge') {
                                // light blue for discharge
                                $statusColor = 'rgb(117, 194, 246)';
                            } else {
                                $statusColor = 'gray';
                            }
                        ?>
                    <tr>
                        <td style="color:rgb(39, 40, 41);"><?php echo $row['nature'] ?></td>
                        <td class="status-cell">
                            <div class="status-circle" style="background-color: <?php echo $statusColor; ?>"></div>
                        </td>
                    </tr>
                    <?php
                        }
                        ?>
                </table>
                <?php else: ?>
                <div class="no-complaints-message">
                    <p>There are not any complaints</p>
                </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
    <?php endif; ?>


    <!-- ....................................................................... -->


    <!-- link -->
    <script>
    const menuLinks = document.querySelectorAll('.side-menu a');
    const currentBaseURL = window.location.href.split('?')[0];
    menuLinks.forEach(link => {
        if (link.href === currentBaseURL) {
            link.classList.add('active');
        }
        link.addEventListener('click', function(event) {
            menuLinks.forEach(link => link.classList.remove('active'));
            this.classList.add('active');
        });
    });
    </script>



</body>


</html>