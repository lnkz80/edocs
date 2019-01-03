<?php
include_once ROOT . '/models/Docs.php';
include_once ROOT . '/models/Menu.php';

class DocsController
{
    public function actionIndex(){
        $mnuarr = Menu::getMenuList(1,0);
        $submnuarr = Menu::getMenuList(2,2);
        include ROOT . '/views/layouts/header.php';
        include ROOT . '/views/docs/index.php';
        include ROOT . '/views/layouts/footer.php';
        return true;
    }
}