<?
$_GET = clear_array($_GET);

$_GET = fill_empty_array($_GET, Array("cost_min", "cost_max"));
$_GET['cost_min'] = intval($_GET['cost_min']);
$_GET['cost_max'] = intval($_GET['cost_max']);

$filter[] = Array("folder", "=", "0");

if ($_GET['cost_max'] > 0)
    $filter[] = Array("cost", "<=", $_GET['cost_max']);
if ($_GET['cost_min'] > 0)
    $filter[] = Array("cost", ">=", $_GET['cost_min']);
?>

<form method="get">
    Цена, от
    <input name="cost_min" value="<? echo $_GET['cost_min'] ?>">
    Цена, до
    <input name="cost_max" value="<? echo $_GET['cost_max'] ?>">

    <input type="submit" value="Искать">

</form>

<br>

<?
$catalog_c = Component::Factory("list_items")
        ->SetParam("table", "catalog")
        ->SetParam("template", "catalog")
        ->SetParam("url", "/catalog/#id#")
        ->SetParam("cache", "auto")
        ->SetParam("filter", $filter)
        ->SetParam("cart_url", "/cart/?add=#id#")
;
$catalog_c->Execute();
?>