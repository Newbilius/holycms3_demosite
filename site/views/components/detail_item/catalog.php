<?
if ($result['id'] > 0) {
    $tags = new HolyTags($params['table'], "tags", "/tags_filter/#tag#");
    ?>

    <?
    if ($result['foto']) {
        $img = new HolyImg($result['foto']);
        $img->Resize(Array("height" => 80, "width" => 200));
        ?>
        <a rel="gal1" class='picture' href="<? echo $result['foto']; ?>"><?
        echo $img->DrawHref(Array(
            "draw_inner" => "style='float:left;padding:4px;'"
        ));
        ?></a>
    <? }; ?>

    <? echo $result['cost']; ?> руб.<br>
    <? echo $result['detail_text']; ?>
    <?
    $url = ReplaceURL($params['cart_url'], $result);
    $url2 = "/ajax/ajax_cart_add?add=" . $result['id'];
    ?>
    <BR>
    <div id="ajax_status"></div>
    <a onclick="return AjaxBuy1('<?= $url2 ?>');" href="<?= $url ?>">Купить одну штуку [ajax]</a>
    <form method="post" action="<? echo ReplaceURL($params['cart_url'], $result); ?>">
        Купить несколько:
        <input name="count" value="1">
        <input type="hidden" name="add" value="<? echo $result['id']; ?>">
        <input type="submit" value="Купить">
    </form>
    <div style="clear:both"></div>
    <div>
        <?
        $result['foto_multi'] = explode(";", $result['foto_multi']);
        foreach ($result['foto_multi'] as $foto_multi)
            if ($foto_multi) {
                ?>
                <div style="width:250xp;height: 150px;padding-right:10px;display: inline">
                    <?
                    $img = new HolyImg($foto_multi);
                    $img->Resize(Array("height" => 150, "width" => 200));
                    ?>
                    <a class="picture" rel="gal1" href="<? echo $foto_multi ?>"><? echo $img->DrawHref(); ?></a>
                </div>
                <?
            }
        ?>
    </div>
    <div style="clear:both"></div>
    <div>Тэги:
        <?
        //тэги
        $cnt = 0;
        $tags_list = $tags->GetList($result);
        foreach ($tags_list as $tag) {
            $cnt++;
            ?>
            <? if ($cnt != 1) { ?>,<? }; ?>
            <a href="<? echo $tag['url'] ?>"><? echo $tag['caption'] ?>(<? echo $tag['count'] ?>)</a><?
            ?>
        <? }; ?>
    </div>

    <?
    if (count($result['other'] > 0))
        if ($result['other'][0]) {
            ?>
            Подобные товары:<?
            $result['other'] = explode(";", $result['other']);

            $filter[] = Array("id", "IN", $result['other']);

            $res = new DBlockElement($params['table']);
            $res->GetList($filter);
            $other_items_list = $res->GetFullList();
            foreach ($other_items_list as $item2) {
                ?>
                <a href="/catalog/<? echo $item2['id'] ?>"><? echo $item2['caption'] ?></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <?
            };
        };
    ?>
<? }; ?>

<script>
    function AjaxBuy1(url_link){
        $.get(url_link,
        function(data){
            $("#ajax_status").html(data);
            $.get("/ajax/ajax_cart_status",
            function(data2){
                $("#ajax_cart").html(data2);
            });
        });
        return false;
    }
</script>