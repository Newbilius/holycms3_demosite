<? if (!defined('HCMS')) die(); ?>
<link rel="stylesheet" type="text/css" href="/site/css/state_bootstrap.min.css"  />
<?
$global_header = View::Factory("templates/global_header")->Set("_OPTIONS", $_OPTIONS)->Draw();
?>
<body>
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container">
                <a class="brand" href="/"><?= $_OPTIONS['slogan'] ?></a>
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <?
                        $menu_c = Component::Factory("main_menu")
                                ->SetParam("template", "inner")
                                ->SetParam("cache", "auto")
                        ;
                        $menu_c->Execute();
                        ?>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
    <div id="wrap">
    <div class="container" style="width:90%;">
        <table width=100% height=100% style="">
            <tr>
                <td colspan=3>
                    <table width="100%" border="1">
                        <tr align="center">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td valign="top" style="width:20%;">
                    Меню двухуровневое:<BR>
                    <?
                    $menu_c = Component::Factory("main_menu")
                            ->SetParam("template", "ul_two_levels_bootstrap")
                            ->SetParam("cache", "auto")
                            ->SetParam("filter", Array("not_visible" => 0, "in_menu" => 1))
                    ;
                    $menu_c->Execute();
                    ?>
                    Меню полноуровневое:<BR>
                    <?
                    $menu_c = Component::Factory("main_menu")
                            ->SetParam("template", "ul_all_levels_bootstrap")
                            ->SetParam("cache", "auto")
                            ->SetParam("filter", Array("not_visible" => 0, "in_menu" => 1))
                    ;
                    $menu_c->Execute();
                    ?>
                </td>
                <td valign="top">
                    <h1>
                        <?
                        $title_c = Component::Factory("option_out")
                                ->SetParam("param", "page_title")
                                ->Execute();
                        ?>
                    </h1>
                    <div><?
                        $valine_c = Component::Factory("nav_line")
                                ->SetParam("template", "bootstrap")
                                ->SetParam("cache", "auto")
                                ->Execute();
                        ?></div>

                    <?= $CONTENT ?>

                </td>
                <td valign="top" width="200" style="padding-left:10px;">
                    <div class="well"><?= $_OPTIONS['phones_top'] ?></div>
                    <div id="ajax_cart" class="well">
                        <?
                        $cart_status_c = Component::Factory("cart_status")
                                ->SetParam("table", "catalog")
                                ->SetParam("cart_url", "/cart/")
                                ->SetParam("cost_var", "cost")
                                ->SetParam("cookie_var", "catalog_items")
                        ;
                        $cart_status_c->Execute();
                        ?>
                    </div>
                    Поиск:<br>
                    <form action="/search/" class="form-inline">
                        <input type="text" name="find">
                        <input class="btn" type="submit" value="Искать">
                    </form>
                    <br>
                    баннер случайный:
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
                    <br><br>
                    Тэги:<br>
                    <?
                    $tags_c = Component::Factory("tags_list")
                            ->SetParam("template", "size")
                            ->SetParam("table", "catalog")
                            ->SetParam("field", "tags")
                            ->SetParam("url", "/tags_filter/#tag#")
                            ->Execute();
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

      <div id="push"></div>
    </div>
        <div id="footer">
            <div class="container" style="padding-top:5px;">
                <span style="float:left;padding-right:20px;"><?= $_OPTIONS['copyright'] ?></span>
                <span style="float:right;padding-right:20px;"><?= $_OPTIONS['counters'] ?></span>
                <span style="float:right;padding-right:20px;"><?= $_OPTIONS['phones_bottom'] ?></span>
            </div>
        </div>

    </div>
</body>
<style>
#footer {
  background-color: #202328;
}
</style>
</html>