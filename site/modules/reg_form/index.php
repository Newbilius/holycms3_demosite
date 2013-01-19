<?
echo $_selected_page['detail_text'];
$user = HolyUser::getInstance();
if ($user->IsAuth())
    Redirect("/cabinet/", true);
else {
    ?>


    <?
    $_POST = clear_array($_POST);

    if (isset($_POST['go'])) {
        $valid = new HolyValidator(Array(
                    "email" => "E-mail",
                    "pass1" => "пароль",
                    "pass2" => "повтор пароля",
                ));

        $valid->AddRule("not_empty", 'email')
                ->AddRule("not_empty", 'pass1')
                ->AddRule("not_empty", 'pass2')
                ->AddRule("email", 'email')
                ->AddRule("unique", 'email', Array(
                    "table" => "site_users",
                    "field" => "email",
                ))
                ->AddRule("equal", 'pass1', "pass2")
        ;

        $valid->Check($_POST);

        $errors = $valid->Complete();

        if ($errors === true) {
            $user->AddUser($_POST['email'], $_POST['pass1']);
            $user->Auth($_POST['email'], $_POST['pass1']);
            Redirect("/cabinet/", true);
        } else {
            ?>
<div class="alert alert-error">
    <?
            foreach ($errors as $error) {
                ?>
                <p style="color:red;"><? echo $error; ?></p>
                <?
            }?>
</div><?
        }
    }

    $_POST = fill_empty_array($_POST, Array(
        "email",
        "pass1",
        "pass2"
            ));
    ?>

    <form method="post">
        E-mail:<br>
        <input type="text" name="email" value="<? echo $_POST['email'] ?>" style="width: 300px;"><br>

        Пароль:<br>
        <input type="password" name="pass1" value="<? echo $_POST['pass1'] ?>" style="width: 300px;"><br>
        Повтор пароля:<br>
        <input type="password" name="pass2" value="<? echo $_POST['pass2'] ?>" style="width: 300px;"><br>

        <input type="hidden" name="go" value="1">
        <input class="btn" type="submit" value="Регистрация">

    </form>



<? }; ?>