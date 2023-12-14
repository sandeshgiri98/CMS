<?php
include_once('connection.php');
$selectQuery = "SELECT brand,name,graphicscard,processor,ram,mainprice,offerprice,image FROM product_details";
$selectExe = mysqli_query($con,$selectQuery);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width= , initial-scale=1.0">
    <title>User Details</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
        }

        th,
        td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            color: #555;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        td:first-child {
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
        }

        td:last-child {
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
        }
        
        .delete-btn, .update-btn {
            padding: 5px 10px;
            border-radius: 3px;
            border: none;
            cursor: pointer;
        }

        .delete-btn {
            background-color: #e74c3c;
            color: #fff;
            margin-right: 5px;
        }

        .update-btn {
            background-color: #3498db;
            color: #fff;
        }
    </style>
</head>

<body>
<table>
        <tr>
            <th>Brand</th>
            <th>Name</th>
            <th>Graphics Card</th>
            <th>Processor</th>
            <th>Ram</th>
            <th>Main Price</th>
            <th>Price</th>
            <th>Image</th>
        </tr>
        <?php
                  while($row=mysqli_fetch_assoc($selectExe))
                  {
                    $img=$row['image'];
        ?>
        <tr>
            <td><?php echo $row['brand']?></td>
            <td><?php echo $row['name']?></td>
            <td><?php echo $row['graphicscard']?></td>
            <td><?php echo $row['processor']?></td>
            <td><?php echo $row['ram']?></td>
            <td><?php echo $row['mainprice']?></td>
            <td><?php echo $row['offerprice']?></td>
            <td><img src="../fontpage/photoes/ppp/<?php echo $row['image']; ?>" height="100"></td>
        </tr>
        
        <?php
        }
                ?>
    </table>