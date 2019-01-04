<?php

include_once ROOT . '/models/Item.php';
include_once ROOT . '/models/Menu.php';

class ItemController
{
    public function actionIndex(){
        $mnuarr = Menu::getMenuList(1,0);
        $submnuarr = Menu::getMenuList(2,1);
        $lmnuarr = Menu::getLeftMenuList(1);
        include ROOT . '/views/layouts/header.php';
        include ROOT . '/views/item/index.php';
        include ROOT . '/views/layouts/footer.php';

        return true;
    }

    public  function actionNewitem(){
        $mnuarr = Menu::getMenuList(1,0);
        $submnuarr = Menu::getMenuList(2,1);
        $lmnuarr = Menu::getLeftMenuList(1);
        include ROOT . '/views/layouts/header.php';
        include ROOT . '/views/item/new.php';
        include ROOT . '/views/layouts/footer.php';

        return true;
    }

    public  function actionView($cat)
    {
        $mnuarr = Menu::getMenuList(1, 0);
        $submnuarr = Menu::getMenuList(2, 1);
        $lmnuarr = Menu::getLeftMenuList(1);
        include ROOT . '/views/layouts/header.php';
        include ROOT . '/views/item/view.php';
        include ROOT . '/views/layouts/footer.php';

        return true;
    }
}