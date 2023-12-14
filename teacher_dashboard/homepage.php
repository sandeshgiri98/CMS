<?php
include_once('teacherdashboard.php');
include_once('connection.php');

$selectQuery = "SELECT id, category, type, department, nature, image, complain_description, complaint_datetime, complain_user FROM complain ORDER BY id DESC";
$selectExe = mysqli_query($con, $selectQuery);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../card/cart.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@500&display=swap" rel="stylesheet">
</head>

<style>
#upperArrow {
    width: 2%;
    position: fixed;
    bottom: 5%;
    right: 3%;
}
</style>

<body>
    <div class="user_top">
        <!-- new Cart file -->
        <div class="new-arrivals-cards">
            <?php while ($row = mysqli_fetch_assoc($selectExe)) { ?>
            <div class="cart">
                <div class="profileset">
                    <div class="profile_pic">
                        <img src="../photoes/usser.gif" alt="A" class="pp" id="profile_pic">
                    </div>
                    <?php
                    
                    ?>
                    <div class="usertype">
                        <div class="profile_name" id="userid">
                            <p class="product-name" name="product"><b><?php echo $row['complain_user']; ?></b></p>
                        </div>
                        <div class="userinfo" style="display: flex; gap: 5px;">
                            <p class="user_info"><?php echo $row['category']; ?></p>
                            <p><?php echo $row['complaint_datetime']; ?></p>
                        </div>
                    </div>
                </div>
                <div class="user_complaints">
                    <p align="justify"><?php echo $row['complain_description']; ?></p>
                </div>
                <div class="inner-cart">
                    <span><img class="product-nm" src="../photoes/<?php echo $row['image']; ?>" alt=""></span>
                </div>
                <div class="line"></div>
                <div class="last-part">
                    <div class="button-container" id="love">
                        <button class="add-to-cart" id="cart-added" alt="add to cart" value="AddToCart" type="submit">
                            <img class="img-cart" src="../photoes/wishlist.svg" alt="Image not found">
                        </button>
                    </div>
                    <div class="button-container" id="comment">
                        <button class="add-to-cart" id="cart-added" alt="add to cart" value="AddToCart" type="submit">
                            <img class="img-cart" src="../photoes/comment.svg" alt="Image not found">
                        </button>
                    </div>
                    <div class="button-container" id="share">
                        <button class="add-to-cart" value="AddToCart" type="submit">
                            <img class="img-cart" id="downcart" onclick="photoFunction()" src="../photoes/share.svg"
                                alt="Image not found">
                        </button>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
    <div id="upperArrow">
        <img src="../photoes/circle-up-solid.svg" alt="" class="to-top">
    </div>

    <script>
    const backtoTop = document.querySelector(".to-top");

    window.addEventListener("scroll", scrollFunction);

    function scrollFunction() {
        if (window.pageYOffset > 2000) {
            backtoTop.style.display = "block";
        } else {
            backtoTop.style.display = "none";
        }
    }

    backtoTop.addEventListener("click", backToTop);

    function backToTop() {
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        });
    }
    </script>

</body>

</html>