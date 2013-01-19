<? if (!defined('HCMS')) die(); ?>

<? if (isset($result)) { ?>
    <?
    foreach ($result[0] as $id => $item) {
        if ($item['redirect'])
            $url = $item['redirect'];
        else
            $url = "/" . $item['name'];
        $style="";
        if ($item['SELECTED']){
            $style="font-weight:bold;";
        }
        ?>
        <li style="<?=$style?>">
                <a href=<?= $url ?>><?= $item['caption'] ?></a>
        </li>
        <?
    };
    ?>
<? }; ?>