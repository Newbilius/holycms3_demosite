<?

global $human_link;


if (is_array($human_link))
    $human_link = $human_link[0];

$_POST = clear_array($_POST);

$filter[] = Array("folder", "=", 0);

$human_link = clear_array($human_link);
if ($human_link) {
    $filter[] = Array("AND", "tags", "REGEXP '[[:<:]]" . $human_link . "[[:>:]]'=", 1);
    echo "<div>Поиск по тэгу " . $human_link . "</div><br>";

    $catalog_c = Component::Factory("list_items")
            ->SetParam("table", "catalog")
            ->SetParam("template", "catalog")
            ->SetParam("url", "/catalog/#id#")
            ->SetParam("cache", "auto")
            ->SetParam("filter", $filter)
            ->SetParam("cart_url", "/cart/?add=#id#")
    ;
    $catalog_c->Execute();
}
else
    echo "не указан тэг";
?>