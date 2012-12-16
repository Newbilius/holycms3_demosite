<?

$_GET = fill_empty_array($_GET, Array(
    'find'
        ));

$array_of_data = array(
    "pages" => array(
        "where" => Array("detail_text", "caption2", "caption"),
        "link" => "/#name#"
    ),
    "catalog" => array(
        "where" => Array("detail_text", "caption"),
        "link" => "/catalog/#id#"
    ),
    "news" => array(
        "where" => Array("preview_text", "caption","detail_text"),
        "link" => "/news/#id#"
    ),
);

$search_c = Component::Factory("search")
        ->SetParam("find_text",$_GET['find'])
        ->SetParam("url", "/search/")
        ->SetParam("area", $array_of_data)
;
$search_c->Execute();
?>