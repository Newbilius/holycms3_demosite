<?
echo $_selected_page['detail_text'];

$_POST = clear_array($_POST);

if (isset($_POST['go'])) {
    $valid = new HolyValidator(Array(
                "email" => "Email",
            ));

    $valid->AddRule("not_empty", 'email')
            ->AddRule("email", 'email');

    $valid->Check($_POST);

    $errors = $valid->Complete();

    if ($errors === true) {
        $res = new DBlockElement("site_users");
        $tmp_item = $res->GetOne(Array(
            "email" => $_POST['email']
                ));
        if (!isset($tmp_item['id']))
            $tmp_item['id'] = 0;
        if (!$tmp_item['id'])
            $errors = array("Извините, такого email не найдено!");
    };

    if ($errors === true) {
        echo "<p style='color:green'>вам отослана ссылка на смену пароля!</p>";

        $uid_rec = MD5(uniqid() . time());
        $res->Update($tmp_item['id'], Array(
            "uic_rec" => $uid_rec
        ),false);
        $link = GetSiteURL() . "/recovery_pass_complete/?email=" . $_POST['email'] . "&recovery=" . $uid_rec;
        $href="<a href='$link'>$link</a>";
        $message = "Для смены пароля пройдите по ссылке:$href. <br> 
            Если вы не собирались менять пароль - просто проигнорируйте это сообщение или оьратитесь к администрации сайта!";

        
        global $_OPTIONS;

        HolyMail($_OPTIONS['back_email'], $_OPTIONS['mail'], "Восстановление пароля на сайте ".$_SERVER['HTTP_HOST'], $message);
    } else {
        ?><div class="alert alert-error"><?
        foreach ($errors as $error) {
            ?>
            <p style="color:red;"><? echo $error; ?></p>
            <?
        }
        ?></div><?
    }
}

$_POST = fill_empty_array($_POST, Array(
    "email",
        ));
?>

<form method="post" class="form-inline">
    E-mail, на который вы регистрировались:<br>
    <input type="text" name="email" value="<? echo $_POST['email'] ?>" style="width: 300px;"><br>
    <input class="btn" type="submit" value="Восстановить">
    <input type="hidden" name="go" value="1">
</form>
