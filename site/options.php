<?php
$_top_menu[] = Array(
    "caption" => "-",
    "parent" => "utilits",
);

$_top_menu[] = Array(
    "url" => "/engine/admin/photo_add.php",
    "caption" => "Загрузка фото в альбом",
    "admin_right" => false,
    "parent" => "utilits",
);

$_photo_id="foto";
$_folder_selector=true;
$_CONFIG['CACHE_SYSTEM']=true;
$_CONFIG['CACHE_MODE']="files";
?>