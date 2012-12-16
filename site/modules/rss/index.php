<?
$catalog_c = Component::Factory("list_items")
        ->SetParam("table", "news")
        ->SetParam("template", "rss")
        ->SetParam("url", "http://www.test.ru/news/#id#")
        ->SetParam("cache", true)
        ->SetParam("debug", false)
        //дополнительные параметры, специфичные для шаблона
        ->SetParam("title", "Новости тестового сайта")
        ->SetParam("link", "http://www.test.ru/")
        ->SetParam("description", "тестовое краткое описание сайта")
;
$catalog_c->Execute();
?>