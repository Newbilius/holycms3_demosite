<? if (!defined('HCMS')) die(); ?>
<div><?
$valine_c = Component::Factory("nav_line")
        ->SetParam("template", "arrow")
        ->SetParam("cache", "auto")
        ->Execute();
?></div><br>
<?=
$CONTENT?>