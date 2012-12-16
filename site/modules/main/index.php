<?
$news_c = Component::Factory("list_items")
        ->SetParams(
        Array(
            "table" => "news",
            "template" => "news",
            "url" => "/news/#id#",
            "cache" => "auto",
        )
);
;
$news_c->Execute();
?>
<hr>
<?
$catalog_c = Component::Factory("list_items")
        ->SetParam("table", "catalog")
        ->SetParam("template", "catalog_spec")
        ->SetParam("url", "/catalog/#id#")
        ->SetParam("cache", "auto")
        ->SetParam("debug", false)
        ->SetParam("count", 3)
        ->SetParam("filter", "folder=0 AND spec1=1")
;
$catalog_c->Execute();
?>