<?php

class Cartridges
{
    public static function getCartList(){
        $db = Db::getConnection();
        $result = $db->query('SELECT * FROM lib_items WHERE catId = "2"');
        $i = 0;
        while($row = $result->fetch()){
            $libCart[$i]['id'] = $row['id'];
            $libCart[$i]['name'] = $row['name'];
            $libCart[$i]['fullname'] = $row['fullname'];
            $libCart[$i]['invcode'] = $row['invcode'];
            $libCart[$i]['modelId'] = $row['modelId'];
            $libCart[$i]['remarks'] = $row['remarks'];
            $i++;
        };

        return $libCart;
    }
}