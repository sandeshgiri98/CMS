<?php
session_start();
include_once('../register/connection.php');

if (!isset($_SESSION['user_name'])) {
    header("Location: ../login/login.php");
    exit();
}

if (isset($_SESSION['fake_user'])) {
    $fakeUserID = $_SESSION['fake_user'];

    $selectQuery = "SELECT id, name, email, phone, dob, password, profile_image FROM register WHERE fake_user = '$fakeUserID'";
    $selectExe = mysqli_query($con, $selectQuery);
    $user = mysqli_fetch_assoc($selectExe);
} else {
    header("Location: ../login/login.php");
    exit();
}
if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['contact'];
    $dob = $_POST['dob'];
    $password = $_POST['password'];


    $updateQuery = "UPDATE register SET name='$name', email='$email', phone='$phone', dob='$dob', password='$password' WHERE fake_user='$fakeUserID'";
    $updateResult = mysqli_query($con, $updateQuery);

    if ($updateResult) {
        echo "<script>alert('User Updated Successfully!');</script>";
        header("Refresh:0");
    } else {
        echo "<script>alert('Failed to update user.');</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Setting</title>
    <link rel="stylesheet" href="../css/user.css">
    <link rel="stylesheet" href="../css/cart.css">
    <link rel="stylesheet" href="../dashboard/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
form {
    margin-left: 28px;
    margin-top: 0px;

}

.error {
    display: none;
    color: red;
    font-size: 12px;
    margin-top: 5px;
}

.error.active {
    display: block;
    border-radius: 3px;
    border-color: red;
}

.userprofile {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.userprofile>div {
    display: flex;
    flex-direction: column;
    margin-bottom: 10px;
    width: 48%;
    /* Set the width to approximately half of the container width */
}

.userprofile label {
    margin-bottom: 5px;
}

.userprofile input[type="password"] {
    width: 100%;

}

#eye-icon {
    height: 20px;
    width: auto;
    background: transparent;
}

.password-input-container {
    position: relative;
    display: inline-block;
}

#password {
    height: 35px;
    width: 500px;
    border-radius: 4px;
    align-items: center;
    justify-content: center;
    display: flex;
}

#show-password-btn {
    position: absolute;
    top: 62%;
    right: 5px;
    transform: translateY(-50%);
    background: transparent;
    border: none;
    cursor: pointer;
}

#eye-icon {
    width: 20px;
    height: auto;
    align-items: center;
    justify-content: center;
    display: flex;
}

.labels {
    margin-top: 10px;
    font-weight: bold;
}
</style>

<body>
    <?php include_once('../dashboard/admin_dash.php'); ?>

    <div class="main-content">
        <div id="products" class="section">
            <section class="main">
                <section class="Products">
                    <div class="product-details">
                        <div class="product-adding-form">

                        </div>
                    </div>

                    <div class="container">
                        <?php
                       
                        $fakeUserID = $_SESSION['fake_user'];

                        $selectQuery = "SELECT id, name, fake_user, profile_image FROM register WHERE fake_user = '$fakeUserID'";
                        $selectExe = mysqli_query($con, $selectQuery);
                        ?>


                        <table class="table">
                            <tbody>
                                <?php
                                while ($row = mysqli_fetch_assoc($selectExe)) {
                                    $img = $row['profile_image'];
                                ?>
                                <div>
                                    <div class="container">
                                        <div class="new-arrivals-cards">
                                            <div class="cart">
                                                <div class="profileset">

                                                    <div class="usertype">
                                                        <div class="profile_name" id="userid">
                                                            <p class="product-name" name="product"><b>Profile
                                                                    Picture</b>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="inner-cart">
                                                        <span>
                                                            <?php echo "<img class='product-nm' src='../photoes/$img' alt='Upload Profile Picture' height='100'>"; ?>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="pp_setting">
                                            <div class="upload_photo">
                                                <form action="redirect.php" method="POST" id="product_form"
                                                    enctype="multipart/form-data">
                                                    <br />
                                                    <h1>Upload Profile Picture</h1>
                                                    <input type="file" id="photoInput" name="image" accept="image/*" />
                                                    <input type="submit" value="Change Profile" name="submit"
                                                        class="button" id="changeProfileBtn" disabled />
                                                </form>
                                            </div>
                                        </div>
                                        </form>
                                    </div>
                                    <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </section>
            </section>
        </div>

        <div class="userprofile">
            <form id="registration-form" action="" method="POST" onsubmit="return validateForm()">
                <div class="labels">
                    <label for="name">
                        <h4>Name</h4>
                    </label>
                    <input type="text" id="name" name="name" required placeholder="Enter Your Name"
                        value="<?php echo $user['name']; ?>">
                    <div class="error" id="name-error">Invalid name. Only alphabets and spaces are allowed.</div>
                </div>
                <div class="labels">
                    <label for="email">
                        <h4>Email</h4>
                    </label>
                    <input type="email" id="email" name="email" required placeholder="Enter Your Email"
                        value="<?php echo $user['email']; ?>">
                    <div class="error" id="email-error">Invalid email address.</div>
                </div>
                <div class="labels">
                    <label for="contact">
                        <h4>Contact No</h4>
                    </label>
                    <input type="tel" id="contact" name="contact" required placeholder="Enter Your Phone Number"
                        value="<?php echo $user['phone']; ?>">
                    <div class="error" id="contact-error">Invalid contact number. It should start with '9' and be 9
                        digits
                        long.</div>
                </div>
                <div class="labels">
                    <label for="dob">
                        <h4>Date of Birth</h4>
                    </label>
                    <input type="date" id="dob" name="dob" required value="<?php echo $user['dob']; ?>">
                    <div class="error" id="dob-error">Please select your date of birth.<br>Note: Must reach 14 years or
                        above</div>
                </div>
                <div class="labels">

                    <div class="password-input-container">
                        <label for="password">
                            <h4>Password</h4>
                        </label>
                        <input type="password" id="password" name="password" required placeholder="Password"
                            value="<?php echo $user['password']; ?>">
                        <button type="button" id="show-password-btn" onclick="togglePasswordVisibility()">
                            <img src="../pop_up/eyeopen.svg" alt="Show Password" id="eye-icon">
                        </button>
                    </div>
                    <br>
                    <div class="error" id="password-error">Use at least 8 characters with Capital letter and special
                        characters like @, !,
                        or # and numbers like 1, 2, or 3</div>
                </div>
                <!-- <small style="color:red;"><b> Note: Use at least 8 characters with Capital letter and Special characters<b></small><br>
                <small style="color:red;"><b> Note: Must Reach 14 years or above<b></small> -->

                <br>
                <div>
                    <div>
                        <input type="submit" name="submit" value="Update" class="button" id="updateBtn" disabled />
                    </div>
                </div>
            </form>
        </div>
    </div>
    </div>

    <script>
    function enableChangeProfileButton() {
        const changeProfileBtn = document.getElementById('changeProfileBtn');
        changeProfileBtn.disabled = false;
    }

    function disableChangeProfileButton() {
        const changeProfileBtn = document.getElementById('changeProfileBtn');
        changeProfileBtn.disabled = true;
    }

    function enableUpdateButton() {
        const updateBtn = document.getElementById('updateBtn');
        updateBtn.disabled = false;
    }

    function disableUpdateButton() {
        const updateBtn = document.getElementById('updateBtn');
        updateBtn.disabled = true;
    }

    function trackChanges() {
        const originalValues = <?php echo json_encode($user); ?>;
        const name = document.getElementById('name').value.trim();
        const email = document.getElementById('email').value.trim();
        const contact = document.getElementById('contact').value.trim();
        const dob = document.getElementById('dob').value.trim();
        const password = document.getElementById('password').value;
        const photoInput = document.getElementById('photoInput');

        if (
            name !== originalValues.name ||
            email !== originalValues.email ||
            contact !== originalValues.phone ||
            dob !== originalValues.dob ||
            password !== originalValues.password
        ) {
            enableUpdateButton();
        } else {
            disableUpdateButton();
        }

        if (photoInput && photoInput.files.length > 0) {
            enableChangeProfileButton();
        } else {
            disableChangeProfileButton();
        }
    }

    const inputFields = document.querySelectorAll('input[type="text"], input[type="email"], input[type="tel"], input[type="date"], input[type="password"]');
    inputFields.forEach(inputField => inputField.addEventListener('input', trackChanges));
    document.getElementById('photoInput').addEventListener('change', enableChangeProfileButton);
</script>


    <script>
    function togglePasswordVisibility() {
        const passwordInput = document.getElementById('password');
        const eyeIcon = document.getElementById('eye-icon');

        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            eyeIcon.setAttribute('src',
                '../pop_up/eyeclose.svg');
        } else {
            passwordInput.type = 'password';
            eyeIcon.setAttribute('src',
                '../pop_up/eyeopen.svg');
        }
    }
    </script>
    <script>
    function validateForm() {
        const name = document.getElementById('name').value.trim();
        const email = document.getElementById('email').value.trim();
        const contact = document.getElementById('contact').value.trim();
        const dob = document.getElementById('dob').value.trim();
        const password = document.getElementById('password').value;
        let valid = true;

        // name
        if (!/^[a-zA-Z\s]+$/.test(name)) {
            valid = false;
            document.getElementById('name-error').classList.add('active');
        } else {
            document.getElementById('name-error').classList.remove('active');
        }

        // email
        if (!/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/.test(email)) {
            valid = false;
            document.getElementById('email-error').classList.add('active');
        } else {
            document.getElementById('email-error').classList.remove('active');
        }


        // contact
        if (!contact.startsWith('9') || !/^\d{9}$/.test(contact.slice(1))) {
            valid = false;
            document.getElementById('contact-error').classList.add('active');
        } else {
            document.getElementById('contact-error').classList.remove('active');
        }


        // dob
        const currentDate = new Date();
        const dobValue = new Date(dob);
        const diffInYears = (currentDate - dobValue) / (1000 * 60 * 60 * 24 * 365.25);

        if (isNaN(diffInYears) || diffInYears < 14) {
            valid = false;
            document.getElementById('dob-error').classList.add('active');
        } else {
            document.getElementById('dob-error').classList.remove('active');
        }

        // password is at least 8 characters long and includes a number and a special character
        if (!/^(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z])[a-zA-Z0-9!@#$%^&*]{8,}$/.test(password)) {
            valid = false;
            document.getElementById('password-error').classList.add('active');
        } else {
            document.getElementById('password-error').classList.remove('active');
        }
        return valid;
    }
    </script>
</body>

</html>