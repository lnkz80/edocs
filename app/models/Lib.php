<?php


class Lib
{

    public static function getLibMVOList(){
        $db = Db::getConnection();
        $result = $db->query('SELECT * FROM lib_mvo');
        $result->setFetchMode(PDO::FETCH_ASSOC);
        $libItem = $result->fetch();

        return $libMVO;
    }



    public static function getLibItemById($id){
        $id = intval($id);

        if($id){
            $db = Db::getConnection();

            $result = $db->query('SELECT * FROM lib_items WHERE id=' . $id);
            $result->setFetchMode(PDO::FETCH_ASSOC);
            $libItem = $result->fetch();

            return $libItem;
        }
    }

    public static function getLibList(){
        $db = Db::getConnection();

        $libList = array();

        $result = $db->query('SELECT id, name, fullname, invcode FROM lib_items ORDER BY id');

        $i = 0;
        while($row = $result->fetch()){
            $libList[$i]['id'] = $row['id'];
            $libList[$i]['name'] = $row['name'];
            $libList[$i]['fullname'] = $row['fullname'];
            $libList[$i]['invcode'] = $row['invcode'];
            $i++;
        }

        return $libList;

    }
}