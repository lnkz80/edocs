<h3>Журнал событий</h3>
<?php
if (isset($_POST)){
//    echo "<pre>";
//    print_r($_POST);
//    echo "</pre>";

//    foreach($_POST as $param=>$cart){
//        $i=0;
//        echo $cart[$i];
////        echo "Строка №".$i.": ";
////        echo $cart['MVO_in'][$i];
//
////        echo "<pre>";
////        print_r($param);
////        echo "</pre>";
////
////        echo "<pre>";
////        print_r($cart);
////        echo "</pre>";
//
//
//        $i++;
//    }

    $c = $_POST;
$i=0;

    foreach ($c as $param=>$cart) {
        echo $param.": ";
        echo $cart[$i]."(".$i.")<br/>";
        echo "<br/><br/>";
    }

    $i++;
} else {
    echo "Данных нет!!!";
}

?>