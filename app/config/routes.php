<?php
return array(
//    'lib/([a-z]+)/([0-9]+)'=>'lib/view/$1/$2',
//    'lib/([0-9]+)' => 'lib/view/$1',
    'lib/([a-z]+)' => 'lib/view/$1',
    'lib' => 'lib/index',
    'docs' => 'docs/index',
    'item/new' => 'item/newitem',
    'item/([a-z]+)' => 'item/view/$1',
    'item' => 'item/index',
    'cartridges/actions' => 'cartridges/actions',
    'cartridges' => 'cartridges/index',
    '' => 'site/index'
);