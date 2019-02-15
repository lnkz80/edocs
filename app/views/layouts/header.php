<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>iTd</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/libs.min.css">
    <link rel="stylesheet" href="/css/main.css">
</head>
<body>
<div class="wrapper">
    <div class="container-fluid head">
        <div class="row page-head">
            <!--        <div class="col-lg-1 head-logo">-->
            <!--            <img src="img/logo.jpg" alt="" class="logo">-->
            <!--        </div>-->
            <div class="col-auto horizontal-mnu">
                <ul class="nav">
                    <!--Категория 1-го уровня-->
                    <?php foreach ($mnuarr as $item=>$value): ?>
                        <li class="nav-item"><a href="/<?php echo $value['path'];?>" class="nav-link"><?php echo $value['name']; ?></a></li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <div class="col-auto">

            </div>
        </div>

        <?php if(isset($submnuarr)): ?>
        <div class="row submnu">
            <div class="col-auto">
                <?php ?>
                <ul class="nav">
                    <!--Категория 2-го уровня-->
                    <?php foreach ($submnuarr as $item=>$value): ?>
                        <li class="nav-item"><a href="/<?php echo $value['path'];?>" class="nav-link"><?php echo $value['name']; ?></a></li>
                    <?php endforeach;?>
                </ul>
                <?php ?>
            </div>
        </div>
        <?php endif; ?>

        <div class="row page-content">
            <div class="col-md-2 left-mnu">
                <ul class="nav flex-column">
                    <!--Вывод информации по категории 2-го уровня-->
                    <?php if(isset($lmnuarr)):?>
                    <?php foreach ($lmnuarr as $item=>$value): ?>
                        <li class="nav-item"><a href="<?php echo $value['path']; ?>" class="nav-link"><?php echo $value['name']; ?></a></li>
                    <?php endforeach;?>
                    <?php endif;?>

                    <!--                    <li class="nav-item active"><a href="#" class="nav-link">Компьютеры</a></li>-->
<!--                    <li class="nav-item active"><img src="/img/ico/new.png"><a href="" class="nav-link">Новый</a></li>-->
<!--                    <li class="nav-item"><img src="/img/ico/journal.png"><a href="" class="nav-link">Журнал</a></li>-->
<!--                    <li class="nav-item"><img src="/img/ico/new.png"><a href="" class="nav-link">Ремонт</a></li>-->
                </ul>
            </div>

        <div class="col-md-10 content">
