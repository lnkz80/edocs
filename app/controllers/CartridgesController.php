<?php

include_once ROOT . '/models/Cartridges.php';
include_once ROOT.'/models/Lib.php';
include_once ROOT . '/models/Menu.php';

class CartridgesController
{
    public function actionIndex(){
        $mnuarr = Menu::getMenuList(1,0);
        $submnuarr = Menu::getMenuList(2,1);
        $lmnuarr = Menu::getLeftMenuList(2);
        include ROOT . '/views/layouts/header.php';
        include ROOT . '/views/cartridges/index.php';
        include ROOT . '/views/layouts/footer.php';

        return true;
    }

    public  function actionActions(){
        $mnuarr = Menu::getMenuList(1,0);
        $submnuarr = Menu::getMenuList(2,1);
        $lmnuarr = Menu::getLeftMenuList(2);
        $mvoarr = Lib::getLibMVOList();
        $cartarr = Cartridges::getCartList();
        $res = null;
        if (isset($_POST)&&!empty($_POST)){
            $fields = array('MVO_out', 'MVO_in', 'invcode', 'remarks');
            foreach ($fields as $field) {
                foreach ($_POST[$field] as $key=>$val) {
                    $recs[$key][$field] = $val;
                }
            }
            $today = date("Y-m-d");
            foreach ($recs as $rec) {
                $recout = "INSERT INTO `jrnl_items` (`do`, `date`, `fromMVO`, `toMVO`, `item`, `remarks`) VALUES (1, '$today', ";
                foreach ($rec as $key=>$val){
                    if ($key == "remarks"){
                        $recout.="'".$val."', ";
                    }
                    else {
                        $recout.="".$val.", ";
                    }

                }
                $recout = substr($recout, 0, -2);
                $recout.=")";
                $res = Cartridges::insertCartDo($recout);

                $recout="";
            }
        }

        include ROOT . '/views/layouts/header.php';
        include ROOT . '/views/cartridges/actions.php';
        include ROOT . '/views/layouts/footer.php';

        return true;
    }

//    public  function actionView($cat)
//    {
//        $mnuarr = Menu::getMenuList(1, 0);
//        $submnuarr = Menu::getMenuList(2, 1);
//        if($cat!='cartridges'){
//            $lmnuarr = Menu::getLeftMenuList(1);}
//        else {
//            $lmnuarr = Menu::getLeftMenuList(2);
//        }
//        include ROOT . '/views/layouts/header.php';
//        if($cat!='cartridges'){
//            include ROOT . '/views/item/view.php';}
//        else {
//            include ROOT . '/views/cartridges/actions.php';
//        }
//
//        include ROOT . '/views/layouts/footer.php';
//
//        return true;
//    }
}