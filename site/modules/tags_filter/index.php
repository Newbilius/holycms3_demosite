<?
global $human_link;


if (is_array($human_link))
    $human_link=$human_link[0];

$_POST = clear_array($_POST);

$filter="folder=0";

$human_link= clear_array($human_link);
if ($human_link)
{
    //$filter.=" AND tags like '%".$human_link."%'";
    $filter.=" AND tags REGEXP '[[:<:]]".$human_link."[[:>:]]' = 1";
    echo "<div>����� �� ���� ".$human_link."</div><br>";
IncludeComponent("list_items","catalog",Array(
		"table"=>"catalog",
		"url"=>"/catalog/#id#",
                "cart_url"=>"/cart/?add=#id#",
                "filter"=>$filter,
));
}
else
    echo "�� ������ ���";
?>