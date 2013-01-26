<?
echo $_selected_page['detail_text'];
$user = HolyUser::getInstance();
if ($user->IsAuth()) {
    $info = $user->GetInfo();
    $_POST = fill_empty_array($_POST, Array(
        "pass1",
        "pass2",
        "fio",
        "address",
            ));
    if (isset($_POST['go'])) {
        $_POST = clear_array($_POST);

        if ($_POST['go'] == 1) {
            $user->Update(Array(
                "fio" => $_POST['fio'],
                "address" => $_POST['address'],
            ));
            $info = $user->GetInfo();
        };

        if ($_POST['go'] == 2) {
            $valid = new HolyValidator(Array(
                        "pass1" => "пароль",
                        "pass2" => "повтор пароля",
                    ));
            $valid->AddRule("not_empty", 'pass1')
                    ->AddRule("not_empty", 'pass2')
                    ->AddRule("equal", 'pass1', "pass2")
            ;
            $valid->Check($_POST);

            $errors = $valid->Complete();

            if ($errors === true) {
                $user->Update(Array(
                    "password" => $_POST['pass1'],
                ));
                $info = $user->GetInfo();
            } else {
                ?><div class="alert alert-error"><?
                foreach ($errors as $error) {
                    ?>
                        <p style="color:red;"><? echo $error; ?></p>
                        <?
                    }
                    ?></div><?
            }
        };
    }
        ?>
    <h2>Данные</h2>
    E-mail: <b><? echo $info['email']; ?></b>
    <form method="post">
        <input type="hidden" name="go" value="1">

        ФИО:<br>
        <input type="text" name="fio" value="<? echo $info['fio']; ?>" style="width: 300px;"><br>
        Адрес доставки:<br>
        <textarea style="width: 300px;height:250px;" name="address"><? echo $info['address']; ?></textarea>
        <br>
        <input class="btn" type="submit" value="сохранить">
    </form>
    <hr>
    <h2>Смена пароля</h2>
    <form method="post">
        <input type="hidden" name="go" value="2">
        Новый пароль:<br>
        <input type="password" name="pass1" value="" style="width: 300px;"><br>
        Повтор нового пароля:<br>
        <input type="password" name="pass2" value="" style="width: 300px;"><br>
        <input class="btn" type="submit" value="сохранить">
    </form>
    <br>
    <?
} else {
    Component::Factory("auth_user_form")
            ->SetParam("cabinet_url", "/cabinet/")
            ->Execute();
    Component::Factory("auth_user_form_social")
            ->SetParam("module_url", "/ajax/ajax_social_reg")
            ->SetParam("cabinet_url", "/cabinet/") //@fix почему не устанавливается (?!!!!)
            ->Execute();
};

if (isset($_GET['exit'])) {
    $user->Logout();
    Redirect("/", true);
};
?>


<? if ($user->IsAuth()) { ?>
    <h4>Привязать ещё социальных аккаунтов к текущему:</h4>
        <?
        Component::Factory("auth_user_form_social")
            ->SetParam("module_url", "/ajax/ajax_social_reg")
            ->SetParam("cabinet_url", "/cabinet/") //@fix почему не устанавливается?!!!!
            ->Execute();
            ?>
    <hr><a class="btn btn-primary" href="?exit=yes">выйти</a>
<? }; ?>

<? if (!$user->IsAuth()) { ?>
    <hr>  <a href="/recovery_pass/">забыли пароль?</a>
<? }; ?>