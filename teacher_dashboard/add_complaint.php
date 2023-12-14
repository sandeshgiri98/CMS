<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Complaint</title>
    <link rel="stylesheet" href="user.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
</head>

<body>
    <?php
    include_once('../teacher_dashboard/teacherdashboard.php');
    ?>
    <div class="main">
        <div id="products" class="section">
            <section class="main">
                <section class="Products">
                    <div class="product-details">
                        <div class="product-adding-form">
                            <form action="redirect.php" method="POST" id="product_form"
                                onsubmit="return confirmSubmission();">
                                <!------------------------------------------------------------------------------------------------->
                                <div class="product-form-fill">
                                    <h1 class="product-heading">Complaint Form</h1>
                                    <div class="brand_info">
                                        <div class="complaint_category">
                                            <label for="complaint_category">Complaint Category</label>
                                            <select id="complaint_category" name="complaint_category" required>
                                                <option value="" disabled selected>Select</option>
                                                <option value="Technical">Technical</option>
                                                <option value="Non-technical">Non-technical</option>
                                                <option value="Teaching">Teaching</option>
                                                <option value="Non-teaching">Non-teaching</option>
                                                <option value="Other">Other</option>
                                            </select>
                                        </div>
                                        <!------------------------------------------------------------------------------------------------->
                                        <div class="complaint_type">
                                            <label for="complaint_type">Complaint Type:</label>
                                            <select id="complaint_type" name="complaint_type" required>
                                                <option value="" disabled selected>Select</option>
                                                <option value="Hardware">Hardware</option>
                                                <option value="Software">Software</option>
                                                <option value="Network">Network</option>
                                                <option value="Facilities">Facilities</option>
                                                <option value="Curriculum">Curriculum</option>
                                                <option value="Administration">Administration</option>
                                                <option value="Other">Other</option>
                                            </select>
                                        </div>
                                    </div>
                                    <br />

                                    <!------------------------------------------------------------------------------------------------->
                                    <label for="name">Nature of Complaint</label>
                                    <input type="text" id="name" name="name" placeholder="Nature of Complaint type"
                                        required />
                                    <br />

                                    <!------------------------------------------------------------------------------------------------->
                                    <div class="display_types">
                                        <div class="dis_type">
                                            <label for="complaint_department">Complaint Department:</label>
                                            <select id="complaint_department" name="complaint_department" required>
                                                <option value="" disabled selected>Select</option>
                                                <option value="IT">IT Department</option>
                                                <option value="HR">HR Department</option>
                                                <option value="Finance">Finance Department</option>
                                                <option value="Operations">Operations Department</option>
                                                <option value="Academics">Academics Department</option>
                                                <option value="Administration">Administration Department</option>
                                                <option value="Other">Other</option>
                                            </select>
                                        </div>
                                        <div class="photo">
                                            <br />
                                            <h1>Upload Product Photo</h1>
                                            <input type="file" id="photoInput" name="image" accept="image/*" />

                                        </div>
                                    </div>


                                    <label for="description">Enter Your Complaint in 500 words</label>
                                    <textarea name="description" id="field" oninput="countChar(this)" maxlength="500"
                                        placeholder="Enter your description here..." required></textarea>

                                    <span><span id="charNum">0</span>/500</span>

                                    <script>
                                    function countChar(val) {
                                        var len = val.value.length;
                                        if (len >= 500) {
                                            val.value = val.value.substring(0, 500);
                                            len = 500; // Update the length to 500 if it exceeds the limit
                                        }
                                        document.getElementById('charNum').textContent = len;
                                    }
                                    </script>
                                    <br>
                                    <label for="Complaint">Complaint By:</label>
                                    <input disabled type="text" class="not-allowed" name="complain"
                                        value="<?php echo $row['fake_user']; ?>"
                                        style="width:100px; text-align:center; cursor: not-allowed; margin-bottom:10px; color:red; font-weight:bold"
                                        readonly disabled>
                                    <input type="hidden" name="complaint" value="<?php echo $row['fake_user']; ?>">


                                    <br>
                                    <input type="submit" value="Submit" name="submit" class="button" />

                            </form>
                            <!------------------------------------------------------------------------------------------------->

                        </div>
                        </form>
                    </div>
        </div>

        <div class="container">
            <?php
                        include_once('connection.php');
                        $fakeUserID = $_SESSION['fake_user']; // Assuming you have stored the fake user ID in a session variable
                        
                        $selectQuery = "SELECT id, category, type, department, nature, image, complain_description, complaint_datetime, complain_user, status FROM complain WHERE complain_user = '$fakeUserID'";
                        $selectExe = mysqli_query($con, $selectQuery);
                        ?>
            <table class="table">
                <thead>
                    <tr>
                        <th>User</th>
                        <th>Date and Time</th>
                        <th>Category</th>
                        <th>Type</th>
                        <th>Department</th>
                        <th>Nature</th>
                        <th>Complaint Description</th>
                        <th>Image</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <?php
                 while ($row = mysqli_fetch_assoc($selectExe)) {
                 $img = $row['image'];
                 ?>
                <tr>
                    <td><?php echo $row['complain_user'] ?></td>
                    <td><?php echo $row['complaint_datetime'] ?></td>
                    <td><?php echo $row['category'] ?></td>
                    <td><?php echo $row['type'] ?></td>
                    <td><?php echo $row['department'] ?></td>
                    <td><?php echo $row['nature'] ?></td>
                    <td><?php echo $row['complain_description'] ?></td>

                    <td>
                        <?php echo "<img src='../photoes/$img' alt='' height='100'>";
                        ?>
                    </td>
                    <td><button type="button" disabled><?php echo $row['status'] ?></button></td>
                </tr>
                <?php
                 }
                 ?>
            </table>
        </div>
        </section>
        </section>
    </div>
    </div>
    <script src="validation.js"></script>
    <script>
    function confirmSubmission() {
        var confirmation = confirm("Do you want to submit the Complaint?");

        if (confirmation) {
            return true;
        } else {
            return false;
        }
    }
    // Display a message
    var urlParams = new URLSearchParams(window.location.search);
    var message = urlParams.get('message');
    if (message) {
        document.getElementById('messageContainer').innerText = message;
    }
    </script>
</body>
</html>