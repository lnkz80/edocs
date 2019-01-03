<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        body {
            font-family: 'Arial';
        }
    </style>
</head>
<body>
    <h1>HELLO!!!</h1>
    <h4>#<?php echo $libItem['id']; ?> - <?php echo $libItem['name']; ?></h4>
    <a href="/lib/<?php echo $libItem['id']; ?>"><h5><?php echo $libItem['fullname']; ?></h5></a>
    <p><?php echo $libItem['invcode']; ?></p>
    <hr>

</body>
</html>