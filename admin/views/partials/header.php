<header>

    <div class="header">
        <h1>
            Administration BULLE DEGOMME
        </h1>
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