<?php
require "settings/init.php";

$bind = array(':prodId' => $_GET["prodId"]);
$produkt = $db->sql(sql: "SELECT * FROM produkter WHERE json_array()=:prodId", binds: $bind)[0];
?>

<!DOCTYPE html>

<html lang="da">

<head>
    <meta charset="utf-8">
    <title>Film databasen</title>

    <meta name="robots" content="All">
    <meta name="author" content="Udgiver">
    <meta name="copyright" content="Information om copyright">

    <link href="css/_bootstrapComponents.scss" rel="stylesheet" type="text/css">
    <link href="css/styles.css" rel="stylesheet" type="text/css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
<?php include 'navbar.php'; ?>
<div class="container mt-4 d-flex justify-content-center">
    <script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
    <lord-icon
            colors="primary:#4be1ec,secondary:#122026"
            src="https://cdn.lordicon.com/ehexapks.json"
            style="width:200px;height:200px"
            trigger="hover">
    </lord-icon>
</div>

<div class="container mt-2">
    <!-- Billede af filmen -->
    <img alt="prodBillede" class="img-fluid" src=" <?php
    echo "images/prodBillede/" . $produkt->prodBillede;
    ?>" style="height: 350px">
    <div class="col-6 bg-white border">
        <!-- Filminformation -->
        <h1><?php
            echo $produkt->prodNavn;
            ?>
        </h1>
        <p> <?php
            echo $produkt->prodBeskrivelse;
            ?></p>
        <p><strong>Skuespillere:</strong>
            <?php
            echo $produkt->prodStars;
            ?></p>
        <p><strong>Instruktør:</strong>
            <?php
            echo $produkt->prodDirector;
            ?></p>
        <p><strong>Genre:</strong>
            <?php
            echo $produkt->prodGenre;
            ?>
        </p>
        <p><strong>Længde: </strong><?php
            echo $produkt->prodTid;
            ?></p>
        <br>
        <div class="container d-flex align-items-end">
            <button class="btn btn-primary ">Køb filmen til <?php
                echo $produkt->prodPris;
                ?> kr</button>
        </div>
    </div>
</div>
<?php include 'footer.php'; ?>

<script src="https://kit.fontawesome.com/645a3a1c42.js" crossorigin="anonymous"></script>
</body>
</html>