<?php

class Menu
{
    public static function getMenuList($lvl, $parent){
        $db = Db::getConnection();

        $mnuList = array();
        $result = $db->query('SELECT * FROM lib_cat WHERE level = ' .$lvl. ' and cat_parent = '.$parent);

        $i = 0;

        while ($row = $result->fetch()){
            $mnuList[$i]['id'] = $row['id'];
            $mnuList[$i]['name'] = $row['name'];
            $mnuList[$i]['path'] = $row['path'];
            $i++;
        }

        return $mnuList;
    }

    public static function getLeftMenuList($id){
        $db = Db::getConnection();

        $mnuList = array();
        $result = $db->query('SELECT * FROM lib_do WHERE cat_id ='.$id.' ORDER BY sort ASC');

        $i = 0;

        while ($row = $result->fetch()){
            $mnuList[$i]['id'] = $row['id'];
            $mnuList[$i]['name'] = $row['name'];
            $mnuList[$i]['path'] = $row['path'];
            $i++;
        }
        return $mnuList;
    }
//    public static function getMainMenuList(){
//        $db = Db::getConnection();
//
//        $mnuList = array();
//        $result = $db->query('SELECT * FROM lib_cat WHERE level = 1');
//
//        $i = 0;
//
//        while ($row = $result->fetch()){
//            $mnuList[$i]['id'] = $row['id'];
//            $mnuList[$i]['name'] = $row['name'];
//            $mnuList[$i]['path'] = $row['path'];
//            $i++;
//        }
//
//        return $mnuList;
//    }
//
//    public static function getSubMenuList(){
//        $db = Db::getConnection();
//
//        $mnuList = array();
//        $result = $db->query('SELECT * FROM lib_cat WHERE level = 2 and cat_parent = 1');
//
//        $i = 0;
//
//        while ($row = $result->fetch()){
//            $mnuList[$i]['id'] = $row['id'];
//            $mnuList[$i]['name'] = $row['name'];
//            $mnuList[$i]['path'] = $row['path'];
//            $i++;
//        }
//
//        return $mnuList;
//    }
//
//    public static function getLeftMenuList(){
//
//    }
}