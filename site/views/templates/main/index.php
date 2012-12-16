<? if (!defined('HCMS')) die(); ?>
<?
$global_header = View::Factory("templates/global_header")->Set("_OPTIONS", $_OPTIONS)->Draw();
?>
<table width=100% height=100%>
    <tr>
        <td colspan=3>
            <table width="100%" border="1">
                <tr align="center">
                    Меню одноуровневое:<BR>
                <?
                $menu_c = Component::Factory("main_menu")
                        ->SetParam("template", "inner_table")
                        ->SetParam("cache", "auto")
                ;
                $menu_c->Execute();
                ?>

                <BR>
                <?= $_OPTIONS['slogan'] ?>
                <?= $_OPTIONS['phones_top'] ?>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td valign="top" style="width:20%;">
            Меню двухуровневое:<BR>
            <?
            $menu_c = Component::Factory("main_menu")
                    ->SetParam("template", "ul_two_levels")
                    ->SetParam("cache", "auto")
                    ->SetParam("filter", Array("not_visible" => 0, "in_menu" => 1))
            ;
            $menu_c->Execute();
            ?>
            Меню полноуровневое:<BR>
            <?
            $menu_c = Component::Factory("main_menu")
                    ->SetParam("template", "ul_all_levels")
                    ->SetParam("cache", "auto")
                    ->SetParam("filter", Array("not_visible" => 0, "in_menu" => 1))
            ;
            $menu_c->Execute();
            ?>
        </td>
        <td valign="top">
            <h1>
                <?
                IncludeComponent("page_title", "", Array(
                    "cache" => "auto",
                    "cache_key" => $_SERVER['REQUEST_URI'],
                ));
                ?>
            </h1>
            <div><?
                IncludeComponent("nav_line", "slash", Array(
                    "cache" => "auto",
                    "cache_key" => $_SERVER['REQUEST_URI'],
                ));
                ?></div><br>

            <?= $CONTENT ?>

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
            $catalog_c = Component::Factory("list_items")
                    ->SetParam("table", "banners")
                    ->SetParam("template", "banners_resize")
                    ->SetParam("cache", false)
                    ->SetParam("count", 1)
                    ->SetParam("order", "RAND()")
            ;
            $catalog_c->Execute();
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
                'field' => 'tags',
                'url' => '/tags_filter/#tag#'
                    //"cache"=>"auto",
            ));
            ?>
            <br><br>
            Полный каталог:<br>
            <?
            $full_catalog_c = Component::Factory("list_items")
                    ->SetParam("table", "catalog")
                    ->SetParam("template", "catalog_folder_tree")
                    ->SetParam("cache", "auto")
                    ->SetParam("filter", "folder=1")
                    ->SetParam("url", "/catalog/#id#")
            ;
            $full_catalog_c->Execute();
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