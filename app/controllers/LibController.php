<?php

/**
 * Created by PhpStorm.
 * User: alex
 * Date: 11/3/18
 * Time: 6:42 PM
 */

include_once ROOT.'/models/Lib.php';
include_once ROOT . '/models/Menu.php';

class LibController
{
   public function actionIndex(){
       $mnuarr = Menu::getMenuList(1,0);
       $submnuarr = Menu::getMenuList(2,4);
       include ROOT . '/views/layouts/header.php';
       include ROOT . '/views/lib/index.php';
       include ROOT . '/views/layouts/footer.php';

       return true;
   }

   public function actionView($id){
       $mnuarr = Menu::getMenuList(1,0);
       $submnuarr = Menu::getMenuList(2,4);
       $mvoarr = Lib::getLibMVOList();
       include ROOT . '/views/layouts/header.php';
       include ROOT . '/views/lib/view.php';
       include ROOT . '/views/layouts/footer.php';

//       $libItem = Lib::getLibItemById($id);

//       require_once (ROOT. "/views/lib/view.php");

       return true;
   }
}