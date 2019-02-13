<?php

include_once ROOT . '/models/Cartridges.php';
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