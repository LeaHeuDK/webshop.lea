<?php
require "settings/init.php";

if(!empty($_GET["type"])){
    if($_GET["type"] == "slet"){
        $id = $_GET["id"];

        $db->sql("DELETE FROM produkter WHERE prodId = :prodId", [":prodId"=> $id], false);

        header("Location: index.php");
    }

}

$produkter = $db->sql("SELECT * FROM produkter");
?>

<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="utf-8">

    <title>Liste over film</title>

    <meta name="robots" content="All">
    <meta name="author" content="Udgiver">
    <meta name="copyright" content="Information om copyright">

    <link href="css/styles.scss" rel="stylesheet" type="text/css">
    <link href="css/styles.css" rel="stylesheet" type="text/css">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
<?php include 'navbar.php'; ?>
<div class="container mt-5">
    <h1 class="fw-bold text-uppercase border-bottom align-content-center"></h1>
</div>
<br>
<div class="container">
    <div class="row">
        <div class="col-md-12 align-content-center">
            <div class="text-center">
                <img src="images/Filmdatabasen.jpg" class="img-fluid" alt="Filmdatabasen">
            </div>
        </div>
    </div>
</div>
<br>
<div class="container mt-5">
    <h1 class="fw-bold text-uppercase border-bottom"></h1>
</div>
<br>

<div class="container">

    <div class="products">
        <div class="filter p-5">
            <div class="row align-items-center">
                <div class="col-2">
                    <label>
                        <input type="search" class="form-control nameSearch" placeholder="Søg efter navn, genre, skuespiller">
                    </label>
                </div>
                <div class="col-1 pe-0">
                    <i class="fa-solid fa-magnifying-glass fa-xl" style="color: #ffffff;"></i>
                </div>
            </div>
        </div>
        <div class="items">
        </div>
    </div>
</div>

<br>
<div class="container mt-5">
    <h1 class="fw-bold text-uppercase border-bottom"></h1>
</div>
<br>

<?php include 'footer.php'; ?>

<script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<script type="module">
    /* import Kage from "./js/kage.js";

     const kage = new Kage();

     kage.kageEllerHvad();*/

    /*kage.skalKimGiveKage(true ).then((response) => {

        console.log(response);

        kage.erDetEnStorKage('small').then((response) => {
            console.log(response);

        }).catch((error) => {
            console.log(error);
        });

    }).catch((error) => {
        console.log(error);
    });*/
</script>

<script type="module">
    import Users from "./js/products.js";
    import Products from "./js/products.js";

    const products = new Products();
    products.init();
</script>
<script src="https://kit.fontawesome.com/a6a96ca819.js" crossorigin="anonymous"></script>
</body>
</html>
