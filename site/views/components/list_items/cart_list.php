<?
if (count($result) > 0) {
    $cost_full = 0;
    ?>
    <form method="post">
        <fieldset>
            <input type="hidden" name="recalc" value="1">
            <table class="table table-bordered table-striped" style="margin-right:30px;">
                <thead>
                    <tr align="center">
                        <th>Фото</th>
                        <th>
                            Название
                        </th>
                        <th>
                            Цена
                        </th>
                        <th>
                            Число
                        </th>
                        <th>
                            Сумма
                        </th>
                        <th>
                            Удалить
                        </th>
                    </tr>
                </thead>
                <?
                foreach ($result as $item) {
                    $cost_this = $params['items_count'][$item['id']] * $item['cost'];
                    $cost_full+=$cost_this;
                    ?>
                    <tr>
                        <td width="150">
                            <?
                            if ($item['foto']) {
                                $img = new HolyImg($item['foto']);
                                $img->Resize(Array("height" => 150, "width" => 150));
                                ?>
                                <a rel="gal1" class="picture" href="<? echo $item['foto']; ?>">
                                    <? echo $img->DrawHref(); ?>
                                </a>
                            <? } else { ?>
                                нет
                            <? }; ?>
                        </td>
                        <td>
                            <a target="_blank" href="<? echo ReplaceURL($params['url'], $item); ?>">
                                <? echo $item['caption']; ?>
                            </a>
                        </td>
                        <td>
                            <? echo $item['cost']; ?>
                        </td>
                        <td>
                            <input type="text" name="item[<? echo $item['id']; ?>]" value="<? echo $params['items_count'][$item['id']]; ?>" style="width:30px;">
                        </td>
                        <td>
                            <? echo $cost_this ?>
                        </td>
                        <td align="center">
                            <a class="btn btn-danger" href="?delete=<? echo $item['id']; ?>">
                                <i class="icon-remove icon-white"></i>
                            </a>
                        </td>
                    </tr>
                    <?
                };
                ?>
            </table>
<input class="btn btn-primary" type="submit" value="Пересчитать">
            <span style="float:right;padding-right:50px;">Сумма: <b><? echo $cost_full; ?>р.</b></span>
        </fieldset>
    </form>
    <?
} else {
    ?>
    Корзина пуста.
    <?
}
?>