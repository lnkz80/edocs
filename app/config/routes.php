<?php
return array(
//    'lib/([a-z]+)/([0-9]+)'=>'lib/view/$1/$2',
    'lib/([0-9]+)' => 'lib/view/$1',
    'lib' => 'lib/index',
    'docs' => 'docs/index',
    'item/new' => 'item/new',
    'item' => 'item/index',
    '' => 'site/index', //actionIndex in SiteController
);