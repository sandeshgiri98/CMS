<?php
session_start();
include_once('../register/connection.php');

if (!isset($_SESSION['user_name'])) {
    header("Location: ../login/login.php");
    exit();
}

// Handle profile picture upload
if (isset($_POST['submit'])) {
    $uploadedFileName = $_FILES['image']['name'];
    // Add code to handle file upload and move it to the desired location
    // ...

    $_SESSION['profile_image'] = $uploadedFileName;
}

if (isset($_POST['update'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['contact'];
    $dob = $_POST['dob'];
    $password = $_POST['password'];
    $role = $_POST['role'];
    $fakeUserID = $_SESSION['fake_user'];

    $updateQuery = "UPDATE register SET name='$name', email='$email', phone='$phone', dob='$dob', password='$password', role='$role' WHERE fake_user='$fakeUserID'";
    $updateResult = mysqli_query($con, $updateQuery);

    if ($updateResult) {
        // Successfully updated
        echo "<script>alert('Profile Updated Successfully!'); window.location.href='profile_setting.php';</script>";
    } else {
        // Failed to update data
        echo "<script>alert('Failed to update profile. Please try again later.'); window.location.href='profile_setting.php';</script>";
    }
}

$fakeUserID = $_SESSION['fake_user'];
$selectQuery = "SELECT id, name, fake_user, profile_image FROM register WHERE fake_user = '$fakeUserID'";
$selectExe = mysqli_query($con, $selectQuery);

// Retrieve user information for displaying in the form
$user = mysqli_fetch_assoc($selectExe);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- ... Head section content ... -->
</head>
<body>
    <!-- ... Content before the form ... -->

    <div class="main-content">
        <!-- ... Rest of the content ... -->

        <div class="container">
            <?php
            $img = isset($user['profile_image']) ? $user['profile_image'] : ''; // Initialize $img variable
            ?>
            <div class="new-arrivals-cards">
                <!-- ... Rest of the content ... -->
                <div class="inner-cart">
                    <span>
                        <?php echo "<img class='product-nm' src='../photoes/$img' alt='Upload Profile Picture' height='100'>"; ?>
                    </span>
                </div>
            </div>
            <div class="pp_setting">
                <div class="upload_photo">
                    <!-- ... Rest of the content ... -->
                </div>
                <div class="sub_button">
                    <br>
                    <input type="submit" value="Submit" name="submit" class="button" />
                </div>
            </div>
            </form>

            <form id="registration-form" action="" method="POST" onsubmit="return validateForm()">
                <div class="textfield">
                    <h3>Update User</h3>

                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required placeholder="Enter Your Name"
                        value="<?php echo isset($user['name']) ? $user['name'] : ''; ?>">
                    <div class="error" id="name-error">Please enter a valid name</div>

                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required placeholder="Enter Your Email"
                        value="<?php echo isset($user['email']) ? $user['email'] : ''; ?>">
                    <div class="error" id="email-error">Please enter a valid email address</div>

                    <label for="contact">Contact No</label>
                    <input type="tel" id="contact" name="contact" required placeholder="Enter Your Phone Number"
                        value="<?php echo isset($user['phone']) ? $user['phone'] : ''; ?>">
                    <div class="error" id="contact-error">Please enter a valid phone number</div>

                    <label for="dob">Date of birth</label>
                    <input type="date" id="dob" name="dob" required value="<?php echo isset($user['dob']) ? $user['dob'] : ''; ?>">
                    <div class="error" id="dob-error">Please enter your date of birth</div>

                    <label for="password">Password</label>
                    <input type="text" id="password" name="password" required placeholder="Password"
                        value="<?php echo isset($user['password']) ? $user['password'] : ''; ?>">
                    <div class="error" id="password-error">Use at least 8 characters with special characters like @, !,
                        or # and numbers like 1, 2, or 3</div>

                    <label for="repassword">Repassword</label>
                    <input type="text" id="repassword" name="repassword" required placeholder="Confirm your password"
                        value="<?php echo isset($user['password']) ? $user['password'] : ''; ?>">
                    <div class="error" id="repassword-error">Password and Repassword don't match.</div>

                    <label for="role">Role</label>
                    <select name="role" id="role" class="roles" required>
                        <option value="student" <?php if (isset($user['role']) && $user['role'] == 'student') echo 'selected'; ?>>Student</option>
                        <option value="teacher" <?php if (isset($user['role']) && $user['role'] == 'teacher') echo 'selected'; ?>>Teacher</option>
                        <option value="admin" <?php if (isset($user['role']) && $user['role'] == 'admin') echo 'selected'; ?>>Admin</option>
                    </select>

                </div>
                <input type="submit" name="update" value="Update User" class="form-button">
            </form>
        </div>
    </div>

    <script src="../dashboard/user-validation.js"></script>
</body>
</html>
