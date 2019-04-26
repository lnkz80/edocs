<?php

class Cartridges
{
    public static function getCartList(){
        $db = Db::getConnection();
        $result = $db->query('SELECT * FROM lib_items WHERE catId = "2" ORDER BY invcode ASC');
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

    public static function insertCartDo($query){
        $db = Db::getConnection();
//        $stmt = $db->prepare($query);

        $result = $db->query($query);
        if(!$result){
            echo "<strong>\nPDO::errorInfo():\n </strong><i>";
            print_r($db->errorInfo());
            echo "</i><br><hr>";
            echo "<a href='/cartridges/actions'>Back to page</a>";
            die();
        }
        return true;
    }
}