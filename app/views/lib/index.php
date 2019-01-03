<?php
include ROOT . '/views/layouts/header.php';
?>

<?php foreach ($libList as $libItem): ?>

<h4>#<?php echo $libItem['id'];?> - <?php echo $libItem['name'];?></h4>

    <a href="/lib/<?php echo $libItem['id'];?>"><h5><?php echo $libItem['fullname'];?></h5></a>

<!--<p>--><?php //echo $libItem['invcode']; ?><!--</p>-->

    <hr>

<?php endforeach; ?>

<?php include ROOT . '/views/layouts/footer.php'; ?>