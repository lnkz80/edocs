<?php

class Router
{
    private $routes;

    public function __construct()
    {
        $routesPath = ROOT.'/config/routes.php';
        $this->routes = include($routesPath);
    }

    //*** Метод получения строки запроса ***/
    private function getURI(){
        if (!empty($_SERVER['REQUEST_URI'])){
           return trim($_SERVER['REQUEST_URI'], '/');
        }
    }

    public function run()
    {
        //*** Получаем строку запроса ***/
        $uri = $this->getURI();
        // Проверить наличие такого запроса в routes.php
        foreach ($this->routes as $uriPattern => $path){
            if(preg_match("~$uriPattern~", $uri)){
                $internalRoute = preg_replace("~$uriPattern~", $path, $uri);
                $segments = explode('/', $internalRoute);

                // Определяем какой контроллер и экшн будут обрабатывать запрос
                $controllerName = ucfirst(array_shift($segments) . 'Controller');
                $actionName = 'action' . ucfirst(array_shift($segments));
                $parameters = $segments;

                // Подключаем файл класса-контроллера
                $controllerFile = ROOT . '/controllers/' . $controllerName . '.php';
                if (file_exists($controllerFile)){
                    include_once ($controllerFile);
                }

                // Создаем объект, вызываем метод (экшн)
                $controllerObject = new $controllerName;
                // $result = $controllerObject->$actionName($parameters);
                $result = call_user_func_array(array($controllerObject, $actionName), $parameters);
                if ($result !=null){
//                    echo "<pre>";
//                    print_r($controllerName);
//                    echo "</pre>";
                    break;
                }
            }
        }


    }
}