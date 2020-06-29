<?php require ('partials/header.php'); ?>
<?php require 'partials/head_assets.php'; ?>

<?php require ('partials/menu.php'); ?>

<?php if(isset($_SESSION['messages'])): ?>
    <div>
        <?php foreach($_SESSION['messages'] as $message): ?>
            <?= $message ?><br>
        <?php endforeach; ?>
    </div>
<?php endif; ?>

<div class="content">
    <div>
        <h2>ici la liste complète des commandes : </h2>
    </div>
    <div>

        <table>
            <?php foreach($orders as $order): ?>

                <tr>
                    <th><a href="index.php?controller=orders&action=details&id=<?=  ($order['id']) ?>"><?=($order['id'])?></a></th>
                    <th><?=  ($order['last_name']) ?></th>
                    <th><?=  ($order['first_name']) ?></th>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
</div>