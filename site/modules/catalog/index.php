    <?
    $_GET=fill_empty_array($_GET,Array("by_what","how"));
    if (
        ($_GET["by_what"]!="caption") && 
        ($_GET["by_what"]!="cost")
        )
        $_GET["by_what"]="caption";
    
    if (
        ($_GET["how"]!="ASC") && 
        ($_GET["how"]!="DESC")
        )
        $_GET["by_what"]="name";
    ?>
	
<?
if (!isset($human_link[0]))
    $human_link_tmp = 0;
	else
	$human_link_tmp = $human_link[0];
$human_link_tmp = intval($human_link_tmp);
if ($human_link_tmp>0)
{
$res = new DBlockElement("catalog");
$item01 = $res->GetByID($human_link_tmp);
if (isset($item01['id']))
if ($item01['id'])
if ($item01['folder']==1){
?>
<form>
Сортировка по
<select name="by_what">
    <option <? if ($_GET["by_what"]=="caption"){?>selected<?};?> value="caption">По имени</option>
    <option <? if ($_GET["by_what"]=="cost"){?>selected<?};?> value="cost">По цене</option>
</select>
<select name="how">
    <option <? if ($_GET["how"]=="ASC"){?>selected<?};?> value="ASC">По возрастанию</option>
    <option <? if ($_GET["how"]=="DESC"){?>selected<?};?> value="DESC">По убыванию</option>
</select>
<input type="submit" value="Поменять">
</form>
<br><br>
<?
};};
?>
<div style="clear:both"></div>
<?
IncludeComponent("catalog20", "", Array(
    "detail_template" => "catalog",
    "items_template" => "catalog",
    "folders_template" => "catalog_folders",
    "table" => "catalog",
    "url" => "/catalog/#id#",
    "add_to_bread" => "caption",
    "set_title" => "caption",
    "cart_url" => "/cart/?add=#id#",
    //"debug"=>true,
    "order"=>$_GET["by_what"]." ".$_GET["how"],
));
?>