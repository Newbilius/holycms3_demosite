<?
ini_set('error_reporting', E_ALL);
error_reporting(-1);
define("HCMS","HCMS");

$_CONFIG["SERVER"]="localhost";
$_CONFIG["LOGIN"]="root";
$_CONFIG["PASS"]="";
$_CONFIG["BASE"]="demo_site";

$_CONFIG['CACHE_SYSTEM']=true;
//для memcached
//$_CONFIG['CACHE_SYSTEM_HOST']="127.0.0.1";
//$_CONFIG['CACHE_SYSTEM_PORT']="11211";
$_CONFIG['CACHE_MODE']="files";
?>