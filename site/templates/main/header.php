<? if (!defined('HCMS')) die(); ?>
<? include_once(FOLDER_SITE . "templates/global_header.php"); ?>

<table width=100% height=100%>
    <tr>
        <td colspan=3>
            <table width="100%" border="1">
                <tr align="center">
                    Меню одноуровневое:<BR>
                <?
                IncludeComponent("main_menu", "inner_table");
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
            IncludeComponent("main_menu", "ul_two_levels", Array(
                "not_root" => true,
            ));
            ?>
            Меню полноуровневое:<BR>
            <?
            IncludeComponent("main_menu", "ul_all_levels", Array(
                "not_root" => true,
            ));
            ?>
        </td>
        <td valign="top">
            <h1><? echo $_OPTIONS['page_title'] ?></h1>
           <div><? IncludeComponent("nav_line","slash"); ?></div><br>