<header>
    <div class="header">
        <a href="index.php" class="logo"<h3>BULLE <span>DEGOMME</span></h3>
        </a>
        <div class="header-right">
            <nav>
                <ul>
                    <li>
                        <?php foreach($categories as $category): ?>
                            <a href="index.php?page=product_list&category_id=<?= $category['id'] ?>"><?= $category['name']; ?></a>
                        <?php endforeach; ?>
                    </li>
                    <li><i class="fas fa-user-circle"></i>
                        <ul>
                            <li><a href="index.php?page=sign">Se connecter </a></li>
                            <li><a href="index.php?page=profile">Mon profile </a></li>
                            <li><a href="?page=log&action=disconnect">déconnexion</a></li>
                        </ul>
                    </li>

                    <li><a href="index.php?page=cart&action=list"><i class="fas fa-shopping-bag"></i></a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>

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