<?
echo $_selected_page['detail_text'];

$_GET = clear_array($_GET);

$_GET = fill_empty_array($_GET, Array(
    "email",
    "recovery",
        ));

$res = new DBlockElement("site_users");
//$res->sql->debug=true;
$tmp_item = $res->GetOne(Array(
    "email" => $_GET['email'],
    "uic_rec" => $_GET['recovery'],
        ));
if (!isset($tmp_item['id']))
    $tmp_item['id'] = 0;
if ($tmp_item['id']) {
    $new_pass = PasswordGenerate(8);
    $res->Update($tmp_item['id'], Array(
        "password"=>$new_pass,
        "uic_rec"=>"",
    ), false);
    ?>
    Для вас установлен новый пароль: <b><? echo $new_pass;?></b>
    <?
} else {
    echo "неверные данные!";
}
?>
