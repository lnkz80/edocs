<?php

include_once ROOT . '/models/Menu.php';

class SiteController
{
    public function actionIndex(){
//        Инициализация главного меню
        $mnuarr = Menu::getMenuList(1,0);
//        $submnuarr = Menu::getMenuList(2,1);

        require_once (ROOT . '/views/site/index.php');

        return true;
    }
}