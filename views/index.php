<!DOCTYPE html>
<html lang="fr">
<head>
    <title></title>
    <!-- inclusion du fichier head_assets.php (meta balises et styles) -->
    <?php require 'partials/head_assets.php'; ?>
</head>
<body>
<div class="container-fluid">
    <div>
        <h4>LIVRAISON GRATUITE DÈS 100€ D'ACHAT</h4>
    </div>
    <div class="banniere">
        <img src="assets/images/Tintin/banniere.jpg" alt="Tintin">
        <div class="absolute">
            <button class="shop" ><a href="index.php?page=product_list">VOS PLUS BELLES FIGURINES DU MONDE DE LA BD !</a></button>
        </div>
    </div>
    <div class="grid-wrapper">
            <h1>A LA UNE !</h1>
            <div class="grid">
                <div class="grid-cell">
                    <a href="index.php?page=product_list&category_id=1">
                        <img src="assets/images/obelix.jpg">
                    </a>
                </div>
                <div class="grid-cell">
                    <a href="index.php?page=product_list&category_id=6">
                        <img src="assets/images/boulebill.jpg">
                    </a>
                </div>
                <div class="grid-cell">
                    <a href="index.php?page=product_list&category_id=5">
                        <img src="assets/images/tintn.jpg">
                    </a>
                </div>
                <div class="grid-cell">
                    <a href="index.php?page=product_list&category_id=4">
                        <img src="assets/images/spiroufantasio.jpg">
                    </a>
                </div>
                <div class="grid-cell">
                    <a href="index.php?page=product_list&category_id=2">
                        <img src="assets/images/gaston.jpg">
                    </a>
                </div>
                <div class="grid-cell">
                    <a href=index.php?page=product_list&category_id=3>
                        <img src="assets/images/lucky.png">
                    </a>
                </div>
            </div>
        </div>

    <hr>
    <div>
        <h1>MEILLEURES VENTES</h1>
        <div class="grid-wrapper">

            <div class="grid">
                <div class="grid-cell">
                    <a href="index.php?page=product&product_id=15">
                        <img src="assets/images/Asterix/Agecanonix.png">
                    </a>
                </div>
                <div class="grid-cell">
                    <a href="index.php?page=product&product_id=39">
                        <img src="assets/images/Tintin/dupondt.jpg">
                    </a>
                </div>
                <div class="grid-cell">
                    <a href="index.php?page=product&product_id=33">
                        <img src="assets/images/Spirou/Spirou.jpg">
                    </a>
                </div>
            </div>

    </div>

</body>
</html>