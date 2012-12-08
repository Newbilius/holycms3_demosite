<?
IncludeComponent("list_items", "news", Array(
    "table" => "news",
    "url" => "/news/#id#",
    "cache"=>"auto",
));
?>
<hr>
<?
IncludeComponent("list_items", "catalog_spec", Array(
    "table" => "catalog",
    "url" => "/catalog/#id#",
    "filter"=>"folder=0 AND spec1=1",
    "count"=>2,
    "cache"=>"auto",
));
?>