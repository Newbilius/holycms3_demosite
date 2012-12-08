<? if (!defined('HCMS')) die(); ?>

</td>
<td valign="top" width="200">

    Поиск:<br>
    <form action="/search/">
        <input type="text" name="find">
        <input type="submit" value="Искать">
    </form>
    <br>
    баннеры случайные:
    <br>

    <?
    IncludeComponent("list_items", "banners_resize", Array(
        "table" => "banners",
        "count" => 1,
        "order" => "RAND()",
            //"debug"=>true,
    ));
    ?>
    <BR><br>
    <?
    IncludeComponent("cart_status", "", Array(
        "table" => "catalog",
        "cart_url" => "/cart/",
        "cost_var" => "cost", //в какой переменной содержится цена
        "cookie_var" => "catalog_items",
            //"debug"=>false,
    ));
    ?>
    <br><br>
    Тэги:<br>
    <?
    IncludeComponent("tags_list", "size", Array(
        'table' => 'catalog',
        'field'=>'tags',
        'url'=>'/tags_filter/#tag#'
        //"cache"=>"auto",
    ));
    ?>
        <br><br>
        Полный каталог:<br>
       <?
    IncludeComponent("list_items", "catalog_folder_tree", Array(
        "table" => "catalog",
        "filter"=>"folder=1",
        "url"=>"/catalog/#id#",
        "cache"=>"auto",
    ));
    ?> 
</td>
</tr>

<tr>

    <td colspan="3">
        <?= $_OPTIONS['footer_code'] ?>
    </td>
</tr>
</table>

<BR>

<?= $_OPTIONS['counters'] ?>

<?= $_OPTIONS['copyright'] ?>
<?= $_OPTIONS['phones_bottom'] ?>

</body>
</html>