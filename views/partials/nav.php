<body>
<header>
    <input type="checkbox" class="trigger">
    <nav>
        <div class="logo">
        <a href="index.php"><h3>BULLE <span>DEGOMME</span></h3></a>
        </div>
        <div>
            <?php foreach($categories as $category): ?>
                <a href="index.php?page=product_list&category_id=<?= $category['id'] ?>"><?= $category['name']; ?></a>
            <?php endforeach; ?>
            <ul>
                <li><i class="fas fa-user-circle"></i>
                    <ul>
                        <li><a href="index.php?page=sign">Se connecter </a></li>
                        <li><a href="index.php?page=profile">Mon profil </a></li>
                        <li><a href="?page=log&action=disconnect">déconnexion</a></li>
                    </ul>
                </li>
            </ul>
            <a href="index.php?page=cart&action=list"><i class="fas fa-shopping-bag"></i></a>

            <a href="#" class="cross"><img src="assets/images/picto-croix.png" alt="Une croix"></a>
        </div>
        <div>
            <a><img src="assets/images/picto-burger.svg" alt="Un burger"></a>
        </div>
    </nav>
    <?php

    if (isset($_SESSION['user']) && $_SESSION['user']['is_admin']==1)
    {
        echo '<li><a href="admin" >Admin</a></li>';
    }
    ?>
</header>
<script>
    const header = document.querySelector('header')
</script>
</body>



<?php
if(isset($_SESSION['flash'])){
    foreach($_SESSION['flash'] as $key => $flash) {
        echo '<div class="flash '. $key .'">';
        echo $flash;
        echo '</div>';
    }
    unset($_SESSION['flash']);
}

?>