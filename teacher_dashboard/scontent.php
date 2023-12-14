<?php
$isDashboardPage = true;
include_once('../teacher_dashboard/student_dash.php');
include_once('../connection/connection.php');

$selectQuery = "SELECT id, category, type, department, nature, profile_image, image, complain_description, complaint_datetime, status, complain_user FROM complain_details ORDER BY id DESC";
$selectExe = mysqli_query($con, $selectQuery);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="cart.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet"
        href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <style>
    /* Your CSS styles here */
    #upperArrow {
        right: 20%;
        width: 2%;
        cursor: pointer;
    }

    .new-arrivals-cards {
        flex-wrap: wrap;
        margin-top: 0px;
    }

    .cart {
        margin-left: 40%;
    }

    @media only screen and (max-width: 1500px) {
        .cart {
            margin-left: 25%;
        }
    }

    @media only screen and (max-width: 1200px) {
        .cart {
            margin-left: 30%;
        }

        #upperArrow {
            right: 2%;
            width: 2%;
        }
    }

    @media only screen and (max-width: 768px) {
        .cart {
            margin-left: 12%;
        }

        #upperArrow {
            display: none;
        }

        .page-content {
            background: none;
        }
    }

    @media only screen and (max-width: 700px) {
        .cart {
            margin-left: 0.5%;
        }
    }

    .add-to-cart {
        /* Your button styles here */
        position: relative;
        overflow: hidden;
        border: none;
        background-color: transparent;
        transition: background-color 0.3s ease;
    }

    /* Show the background color on hover */
    .add-to-cart:hover {
        border-color: #f9b9c4;
        background: #fbd0d8;
    }

    .content-wrapper {
        position: relative;
        z-index: 2;
    }

    .counting {
        display: flex;
        justify-content: space-between;
    }

    .like_count p {
        margin: 0;
        text-align: left;
        margin-left: 5px;
        margin-bottom: -20px
    }

    .comment_count p {
        position: absolute;
        margin: 0;
        text-align: left;
        margin-left: 500px;
        margin-bottom: -20px
    }

    @import url('https://fonts.googleapis.com/css?family=Montserrat:600&display=swap');

    .heart-btn {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        /* padding: 13px 16px; */
    }

    .content {
        border: none display: flex;


        cursor: pointer;
    }

    .content.heart-active {
        border-color: #f9b9c4;
        background: #fbd0d8;
    }

    .heart {
        position: absolute;
        background: url("img.png") no-repeat;
        background-position: left;
        background-size: 2900%;
        height: 90px;
        width: 110px;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }

    .text {
        font-size: 21px;
        margin-left: 30px;
        color: grey;
        font-family: 'Montserrat', sans-serif;
    }

    /* .numb:before{
        content: '';
        font-size: 21px;
        margin-left: 7px;
        font-weight: 600;
        color: #9C9496;
        font-family: sans-serif;
        } */
    .numb.heart-active:before {
        content: '';
        color: #000;
    }

    .text.heart-active {
        color: #000;
    }

    .heart.heart-active {
        animation: animate .8s steps(28) 1;
        background-position: right;
    }

    @keyframes animate {
        0% {
            background-position: left;
        }

        100% {
            background-position: right;
        }
    }

    /* popup */
    .main {
        padding: 0px;
    }

    @media only screen and (max-width: 1200px) {
        * {
            flex-wrap: wrap;
        }
    }

    @media only screen and (max-width: 768px) {
        * {
            flex-wrap: wrap;
        }
    }


    input,
    select,
    textarea {
        border: 0.80px solid silver;
    }

    .photo input {
        border: none;
    }

    .popup {
        display: none;
        position: fixed;
        top: 45%;
        /* Center vertically */
        left: 50%;
        /* Center horizontally */
        transform: translate(-40%, -40%);
        /* Center both vertically and horizontally */
        width: 900px;
        max-height: 60%;
        /* Adjust as needed */
        overflow-y: auto;
        /* Add scrollbar if content exceeds height */

    }

    .popup-content {
        background-color: white;
        padding: 0px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
        text-align: center;
    }

    #closePopup {
        position: relative;
        background-color: #4CAF50;
        border: none;
        font-size: 18px;
        color: #FFFFFF;
        padding: 1px;
        width: 80px;
        text-align: center;
        transition-duration: 0.4s;
        text-decoration: none;
        overflow: hidden;
        cursor: pointer;
        margin-top: 10px;
    }

    #closePopup:after {
        content: "";
        background: #f1f1f1;
        display: block;
        position: absolute;
        padding-top: 300%;
        padding-left: 350%;
        margin-left: -20px !important;
        margin-top: -120%;
        opacity: 0;
        transition: all 0.8s;
    }

    #closePopup:active:after {
        padding: 0;
        margin: 0;
        opacity: 1;
        transition: 0s;
    }
    </style>
</head>

<body>
    <div class="main-content">
        <main>
            <div class="page-content">
                <!-- Dashboard -->
                <div class="user_top">
                    <div class="new-arrivals-cards">
                        <?php while ($row = mysqli_fetch_assoc($selectExe)) { ?>
                        <div class="cart">
                            <div class="profileset">
                                <div class="profile_pic">
                                    <?php
                                        $profileImageName = $row['profile_image'];
                                        $profileImageURL = '../photoes/' . $profileImageName;

                                        // Check if the profile_image URL is valid and exists
                                        if (!empty($profileImageName) && file_exists($profileImageURL)) {
                                            echo '<img src="' . $profileImageURL . '" alt="Profile Picture" class="pp">';
                                        } else {
                                            // If the profile_image is empty or does not exist, display the default profile picture
                                            echo '<img src="../photoes/user.png" alt="Default Profile Picture" class="pp">';
                                        }
                                        ?>
                                </div>
                                <div class="usertype" id="usertype-<?php echo $row['id']; ?>">
                                    <div class="profile_name" id="userid">
                                        <p class="product-name" name="product">
                                            <b><?php echo $row['complain_user']; ?></b>
                                        </p>
                                    </div>
                                    <div class="userinfo" style="display: flex; gap: 5px;">
                                        <p style="color:blue">
                                            <span class="time-ago"
                                                data-datetime="<?php echo $row['complaint_datetime'] ?>"></span><br>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="user_complaints">
                                <p align="justify"><?php echo $row['complain_description']; ?></p>
                            </div>
                            <div class="inner-cart">
                                <?php if (!empty($row['image'])): ?>
                                <span>
                                    <img class="product-nm" src="../photoes/<?php echo $row['image']; ?>" alt="">
                                </span>
                                <?php endif; ?>
                            </div>

                            <div class="line"></div>
                            <div class="last-part">
                                <!-- <div class="heart_btn" id="love">
                                    <button class="add-to-cart heart-button" >
                                        <div class="heart-btn">
                                            <div class="content">
                                                <span class="heart"></span>
                                               
                                                <span class="numb"></span>
                                            </div>
                                        </div>
                                    </button>
                                </div> -->
                                <!-- .................................comment ko lagi........................... -->
                                <!-- <div class="button-container" id="comment">
                                    <button class="add-to-cart" onclick="openPopup('?php echo $row['complain_user']; ?>')">
                                        <div class="content-wrapper">
                                            <img class="img-cart" src="../photoes/comment.svg" alt="Image not found">
                                        </div>
                                    </button>
                                </div> -->
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                </div>
                <div id="upperArrow">
                    <img src="../photoes/circle-up-solid.svg" alt="" class="to-top">
                </div>
            </div>
        </main>
    </div>

    <script>
    const backtoTop = document.querySelector(".to-top");

    function checkScrollPosition() {
        if (window.pageYOffset > 2000) {
            backtoTop.style.display = "block";
        } else {
            backtoTop.style.display = "none";
        }
    }

    document.addEventListener("DOMContentLoaded", () => {
        checkScrollPosition();
    });

    window.addEventListener("scroll", () => {
        checkScrollPosition();
    });

    backtoTop.addEventListener("click", backToTop);

    function backToTop() {
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        });
    }
    </script>

    <script>
    const backtoTop = document.querySelector(".to-top");

    function checkScrollPosition() {
        if (window.pageYOffset > 2000) {
            backtoTop.style.display = "block";
        } else {
            backtoTop.style.display = "none";
        }
    }

    document.addEventListener("DOMContentLoaded", () => {
        checkScrollPosition();
    });

    window.addEventListener("scroll", () => {
        checkScrollPosition();
    });

    backtoTop.addEventListener("click", backToTop);

    function backToTop() {
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        });
    }
    </script>


    <script>
    // Function to calculate time ago
    function timeAgo(datetime) {
        const timestamp = new Date(datetime).getTime();
        const currentTime = new Date().getTime();
        const timeDiff = currentTime - timestamp;

        if (timeDiff < 60000) {
            return "Just now";
        } else if (timeDiff < 3600000) {
            const minutes = Math.floor(timeDiff / 60000);
            return minutes === 1 ? minutes + " minute ago" : minutes + " minutes ago";
        } else if (timeDiff < 86400000) {
            const hours = Math.floor(timeDiff / 3600000);
            return hours === 1 ? hours + " hour ago" : hours + " hours ago";
        } else if (timeDiff < 604800000) {
            const days = Math.floor(timeDiff / 86400000);
            return days === 1 ? days + " day ago" : days + " days ago";
        } else if (timeDiff < 2419200000) {
            const weeks = Math.floor(timeDiff / 604800000);
            return weeks === 1 ? weeks + " week ago" : weeks + " weeks ago";
        } else {
            const months = Math.floor(timeDiff / 2419200000);
            return months === 1 ? months + " month ago" : months + " months ago";
        }
    }

    function updateTimeAgo() {
        const timeAgoElements = document.getElementsByClassName("time-ago");
        for (const element of timeAgoElements) {
            const datetime = element.getAttribute("data-datetime");
            element.textContent = timeAgo(datetime);
        }
    }

    function fetchUpdatedData(elementId) {
        fetch("fetch_data.php")
            .then((response) => response.json())
            .then((data) => {
                const element = document.getElementById("usertype-" + elementId);
                const newData = data.find((item) => item.id === elementId);
                if (newData) {
                    const profileNameElement = element.querySelector(".profile_name");
                    const userinfoElement = element.querySelector(".userinfo");
                    profileNameElement.innerHTML = `
                                    <p class="product-name" name="product">
                                        <b>${newData.complain_user}</b>
                                    </p>
                                `;
                    userinfoElement.innerHTML = `
                                    <p style="color:blue"><span class="time-ago" data-datetime="${newData.complaint_datetime}"></span></p>
                                `;
                    updateTimeAgo();
                }
            })
            .catch((error) => {
                console.error("Failed to fetch data:", error);
            });
    }
    const elements = document.querySelectorAll(".usertype");
    elements.forEach((element) => {
        const elementId = element.getAttribute("id").split("-")[1];
        updateTimeAgo();
        fetchUpdatedData(elementId);
    });
    setInterval(updateTimeAgo, 6000);
    </script>
    <!-- <script>
    $(document).ready(function() {
        $('.heart-button').click(function() {
            $(this).toggleClass("heart-active");
            // Handle text and icon color changes
            $(this).find('.text').toggleClass("heart-active");
            $(this).find('.numb').toggleClass("heart-active");
            $(this).find('.heart').toggleClass("heart-active");

            // Handle like count change
            const postId = $(this).data('post-id');
            likePost(postId);
        });
    });

    function likePost(postId) {
        fetch("like_post.php", {
                method: "POST",
                body: new URLSearchParams({
                    postId: postId
                }),
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                },
            })
            .then((response) => response.json())
            .then((data) => {
                const likeCountElement = document.getElementById(
                    "like-count-" + postId
                );
                const likeCount = data.likes_count;
                likeCountElement.innerText = likeCount;
            })
            .catch((error) => {
                console.error("Error while liking post:", error);
            });
    }
    </script> -->

    <script>
    $(document).ready(function() {
        $('.heart-button').click(function() {
            const postId = $(this).data('post-id');
            const isLiked = $(this).hasClass('heart-active');

            // Send a request to the server to toggle the like status
            toggleLike(postId, isLiked);

            // Toggle the like status on the client-side
            $(this).toggleClass('heart-active');
        });
    });

    function toggleLike(postId, isLiked) {
        const formData = new FormData();
        formData.append('post_id', postId);
        formData.append('already_liked', isLiked);

        fetch('like_post.php', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    // Update the like count on the client-side
                    const likeCountElement = document.getElementById('like-count-' + postId);
                    likeCountElement.innerText = data.likes + ' Likes';
                } else {
                    console.error('Failed to toggle like status.');
                }
            })
            .catch(error => {
                console.error('Error while toggling like status:', error);
            });
    }
    </script>
</body>

</html>