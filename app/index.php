<?

// FrontController


//CommonSettings
ini_set('display_errors', 1);
error_reporting(E_ALL);

//SystemFilesIncluding
define('ROOT', dirname(__FILE__));
require_once (ROOT.'/components/router.php');

//DBLink
require_once (ROOT.'/components/Db.php');

//template test
//require_once (ROOT. '/template/index.php');

//RouterCall
$router = new Router();
$router->run();
