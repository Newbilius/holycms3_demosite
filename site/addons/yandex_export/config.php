<?
global $_top_menu;
$_top_menu[] = Array(
    "caption" => "-",
    "parent" => "utilits",
	"admin_right" => true,
);

$_top_menu[] = Array(
    "url" => "/site/run/yandex_export.php",
    "caption" => "Ручной запуск экспорта в яндекс.маркет файл",
    "admin_right" => true,
    "parent" => "utilits",
);
?>