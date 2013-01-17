<?php

include_once($_SERVER['DOCUMENT_ROOT'] . "/engine/engine.php");

global $yandex_pass;

function yandex_clear_text($text) {
    $text = trim($text);
    $text = str_replace(Array("\r\n", "\r", "\n"), "", $text);
    return $text;
}

;

$user_ifno_holy = $H_USER->GetInfo();

if (!isset($_GET['code']))
    $_GET['code'] = "";
if (($_GET['code'] == $yandex_pass) || ($user_ifno_holy['block_control'])) {
    $res = new DBlockElement("catalog");
    $res->GetList("folder=1");

    while ($tmp = $res->GetNext())
        $folders[$tmp['id']] = $tmp['caption'];

    $res->GetList("folder=0");

    $text[] = array("id", "available", "url", "price", "currencyId", "category", "picture", "name", "description");

    while ($item = $res->GetNext()) {
        if ($item['parent'] != 0) {
            if ($item['cost'] > 0) {
                $tmp = array();
                $tmp[] = trim($item['name']); //код
                $tmp[] = "true"; //наличие			
                $tmp[] = "http://" . $_SERVER['SERVER_NAME'] . "/catalog/" . $item['id']; //ссылка
                $tmp[] = $item['cost']; //цена
                $tmp[] = "RUR"; //валюта
                $tmp[] = $folders[$item['parent']]; //категория
                if ($item['foto']) {  //картинка
                    $tmp[] = "http://" . $_SERVER['SERVER_NAME'] . $item['foto'];
                } else {
                    $tmp[] = "";
                }
                $tmp[] = yandex_clear_text($item['caption']); //название
                $tmp[] = yandex_clear_text($item['detail_text']); //описание

                $text[] = $tmp;
            };
        };
    };


    //preprint($text);
    $fp = fopen($_SERVER['DOCUMENT_ROOT'] . "/market.csv", 'w');
    foreach ($text as $line) {
        fputcsv($fp, $line);
    }
    fclose($fp);
    echo "<a href=/market.csv>Каталог для выгрузки создан в корне сайта.</a>";
};
?>