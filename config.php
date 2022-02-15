<?php
$dbhost = "192.168.129.126";
$dbport = "26257";
$db = "bf";
$dbuser = "t2user";
$dbpassw = '';
$frontpage_limit = "500";
if ( getenv("BF_FRONTPAGE_LIMIT") ){
   $frontpage_limit = getenv("BF_FRONTPAGE_LIMIT");
}
$webhost = '10.212.139.37';
$weburl = 'http://' . $webhost ;
if ( getenv("BF_MEMCACHE_SERVER")){
   $memcache_enabled_pictures = 1;
   $memcache_server = getenv("BF_MEMCACHE_SERVER");
   $memcache_enabled = 1;
}


?>
