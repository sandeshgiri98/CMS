<?php
$isDashboardPage = true;
?>
<?php
include_once('../student_dashboard/student_dash.php');
include_once('../connection/connection.php');

$selectQuery = "SELECT id, category, type, department, nature, image, complain_description, complaint_datetime,status, complain_user FROM complain ORDER BY id DESC";
$selectExe = mysqli_query($con, $selectQuery);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="../card/cart.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet"
        href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<style>
#upperArrow {
    right: 20%;
    width: 2%;
}

.new-arrivals-cards {
    flex-wrap: wrap;
    margin-top: 0px;
}

.cart {
    margin-left: 30%;
}

@media only screen and (max-width: 1200px) {
    .cart {
        margin-left: 20%;
    }

    #upperArrow {
        right: 2%;
        width: 2%;
    }
}

@media only screen and (max-width: 768px) {
    .cart {
        margin-left: 10%;

    }

    #upperArrow {
        display: none;
    }

    .page-content {
        background: none;
    }
}
</style>

<body>
    <div class="main-content">
        <main>
            <div class="page-content">
                <!-- dashboard -->
                <div class="user_top">
                    <div class="new-arrivals-cards">
                        <?php while ($row = mysqli_fetch_assoc($selectExe)) { ?>
                        <div class="cart">
                            <div class="profileset">
                                <div class="profile_pic">
                                    <img src="../photoes/usser.gif" alt="A" class="pp" id="profile_pic">
                                </div>
                                <?php
                    
                                ?>
                                <div class="usertype" id="usertype-<?php echo $row['id']; ?>">
                                    <div class="profile_name" id="userid">
                                        <p class="product-name" name="product">
                                            <b><?php echo $row['complain_user']; ?></b>
                                        </p>
                                    </div>
                                    <div class="userinfo" style="display: flex; gap: 5px;">
                                        <p style="color:blue"><span class="time-ago"
                                                data-datetime="<?php echo $row['complaint_datetime'] ?>"></span></p>
                                    </div>
                                </div>
                            </div>
                            <div class="user_complaints">
                                <p align="justify"><?php echo $row['complain_description']; ?></p>
                            </div>
                            <div class="inner-cart">
                                <?php if (!empty($row['image'])): ?>
                                <span><img class="product-nm" src="../photoes/<?php echo $row['image']; ?>"
                                        alt=""></span>
                                <?php endif; ?>
                            </div>
                            <div class="line"></div>
                            <div class="last-part">
                                <div class="button-container" id="love">
                                    <button class="add-to-cart" id="cart-added" alt="add to cart" value="AddToCart"
                                        type="submit">
                                        <img class="img-cart" src="../photoes/wishlist.svg" alt="Image not found">
                                    </button>
                                </div>
                                <div class="button-container" id="comment">
                                    <button class="add-to-cart" id="cart-added" alt="add to cart" value="AddToCart"
                                        type="submit">
                                        <img class="img-cart" src="../photoes/comment.svg" alt="Image not found">
                                    </button>
                                </div>
                                <!-- <div class="button-container" id="share">
                                    <button class="add-to-cart" value="AddToCart" type="submit">
                                        <img class="img-cart" id="downcart" onclick="photoFunction()"
                                            src="../photoes/share.svg" alt="Image not found">
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
    // Function to calculate time ago
    function timeAgo(datetime) {
        const timestamp = new Date(datetime).getTime();
        const currentTime = new Date().getTime();
        const timeDiff = currentTime - timestamp;

        if (timeDiff < 60000) {
            return 'Just now';
        } else if (timeDiff < 3600000) {
            const minutes = Math.floor(timeDiff / 60000);
            return minutes === 1 ? minutes + ' minute ago' : minutes + ' minutes ago';
        } else if (timeDiff < 86400000) {
            const hours = Math.floor(timeDiff / 3600000);
            return hours === 1 ? hours + ' hour ago' : hours + ' hours ago';
        } else if (timeDiff < 604800000) {
            const days = Math.floor(timeDiff / 86400000);
            return days === 1 ? days + ' day ago' : days + ' days ago';
        } else if (timeDiff < 2419200000) {
            const weeks = Math.floor(timeDiff / 604800000);
            return weeks === 1 ? weeks + ' week ago' : weeks + ' weeks ago';
        } else {
            const months = Math.floor(timeDiff / 2419200000);
            return months === 1 ? months + ' month ago' : months + ' months ago';
        }
    }


    function updateTimeAgo() {
        const timeAgoElements = document.getElementsByClassName('time-ago');
        for (const element of timeAgoElements) {
            const datetime = element.getAttribute('data-datetime');
            element.textContent = timeAgo(datetime);
        }
    }

    function fetchUpdatedData(elementId) {

        fetch('fetch_data.php')
            .then(response => response.json())
            .then(data => {
                const element = document.getElementById('usertype-' + elementId);
                const newData = data.find(item => item.id === elementId);
                if (newData) {
                    const profileNameElement = element.querySelector('.profile_name');
                    const userinfoElement = element.querySelector('.userinfo');
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
            .catch(error => {
                console.error('Failed to fetch data:', error);
            });
    }
    const elements = document.querySelectorAll('.usertype');
    elements.forEach(element => {
        const elementId = element.getAttribute('id').split('-')[1];
        updateTimeAgo();
        fetchUpdatedData(elementId);
    });
    setInterval(updateTimeAgo, 6000);
    </script>
</body>

</html>