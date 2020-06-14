<!doctype html>
<html>
<head>
    <title><?= $pageTitle; ?></title>
    <meta name ="description" content="afficher description de la page">
</head>
<body>
<?php require('views/partials/nav.php');?>

<div>
    <?php
        require $view;
    ?>
</div>
<?php require('views/partials/footer.php');?>

</body>
</html>