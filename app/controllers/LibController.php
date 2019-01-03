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
       $libList = array();
       $libList = Lib::getLibList();
       $mnuarr = Menu::getMainMenuList();
       require_once (ROOT. "/views/lib/index.php");

       return true;
   }

   public function actionView($id){

       $libItem = Lib::getLibItemById($id);

       require_once (ROOT. "/views/lib/view.php");

       return true;
   }
}