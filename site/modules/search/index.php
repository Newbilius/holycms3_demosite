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


IncludeComponent("search", "", Array(
    "find_text" => $_GET['find'],
    "area" => $array_of_data,
    "url"=>"/search/",
));
?>