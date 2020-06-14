<!DOCTYPE html>
<html lang="fr">
<head>
    <title>
        <?php if($selectedCategory == false): ?>
            Tous les produits
        <?php else: ?>
            <?= $selectedCategory['name']; ?>
        <?php endif; ?>
    </title>
    <?php require 'partials/head_assets.php'; ?>
</head>
<body>
<div class="container-fluid">
    <hr>
    <h1>
        <?php if($selectedCategory == false): ?>
            Tous les produits
        <?php else: ?>
            <?= $selectedCategory['name']; ?>
        <?php endif; ?>
    </h1>
    <hr>
    <div class="container">

        <div class="row">
            <div class="grid-container">

                <?php foreach($products as $product): ?>
                    <?php if( isset($_GET['category_id']) && ($_GET['category_id'] == $product['category_id']) || !isset($_GET['category_id']) ): ?>
                        <div class="column">
                            <div class="card">
                                <a href="index.php?page=product&product_id=<?= $product['id']; ?>" alt="<?= $product['name']; ?>" >
                                    <img src="./assets/images/<?= $product['image']; ?>"  alt="<?= $product['name']; ?>" >
                                    <h3  class="product"><a href="index.php?page=product&product_id=<?= $product['id']; ?>"><?php echo $product["name"]?></a></h3>
                                    <p  class="product"><a href="index.php?page=product&product_id=<?= $product['id']; ?>"><?php echo $product["price"]?>€</a></p>
                                    <div class="product-links">
                                        <a href=""><i class="far fa-heart"></i></a>
                                    </div>
                            </div>
                        </div>
                    <?php endif; ?>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</body>
</html>
