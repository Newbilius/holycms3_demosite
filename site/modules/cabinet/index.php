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
                foreach ($errors as $error) {
                    ?>
                    <p style="color:red;"><? echo $error; ?></p>
                    <?
                }
            }
        };
    }
    ?>


    <h2>Данные</h2>
    E-mail: <b><? echo $info['email']; ?></b>
    <form method="post">
        <input type="hidden" name="go" value="1">

        ФИО:<br>
        <input name="fio" value="<? echo $info['fio']; ?>" style="width: 300px;"><br>
        Адрес доставки:<br>
        <textarea style="width: 300px;height:250px;" name="address"><? echo $info['address']; ?></textarea>
        <input type="submit" value="сохранить">
    </form>

    <hr>
    <h2>Смена пароля</h2>
    <form method="post">
        <input type="hidden" name="go" value="2">

        Новый пароль:<br>
        <input type="password" name="pass1" value="" style="width: 300px;"><br>
        Повтор нового пароля:<br>
        <input type="password" name="pass2" value="" style="width: 300px;"><br>
        <input type="submit" value="сохранить">
    </form>
    <br>

    <?
}
else
    IncludeComponent("auth_user_form", "", Array(
        "cabinet_url" => "/cabinet/"
    ));

if (isset($_GET['exit'])) {
    $user->Logout();
    Redirect("/", true);
};
?>


<? if ($user->IsAuth()) { ?>
    <hr><a href="?exit=yes">выйти</a>
<? }; ?>

<? if (!$user->IsAuth()) { ?>
    <hr>  <a href="/recovery_pass/">забыли пароль?</a>
<? }; ?>
<?
/*
  $_POST = clear_array($_POST);

  if (isset($_POST['go'])) {
  $valid = new HolyValidator(Array(
  "fio" => "Имя",
  "info" => "обратный адрес или телефон",
  "text" => "текст",
  ));

  $valid->AddRule("not_empty", 'fio')
  ->AddRule("not_empty", 'info')
  ->AddRule("not_empty", 'text');

  $valid->Check($_POST);

  $errors = $valid->Complete();

  if ($errors === true) {
  echo "<p style='color:green'>сообщение отправлено успешно</p>";


  $mail_text = "ФИО:" . $_POST["fio"] . "<BR>";
  $mail_text.="Данные для связи:" . $_POST["info"] . "<BR>";
  $mail_text.="Вопрос:<BR>" . $_POST["text"] . "<BR>";
  global $_OPTIONS;

  unset($_POST);
  $_POST=array();

  HolyMail("info@" . $_SERVER['HTTP_HOST'], $_OPTIONS['mail'], "Заполнена форма обратной связи", $mail_text);
  } else {
  foreach ($errors as $error) {
  ?>
  <p style="color:red;"><? echo $error; ?></p>
  <?
  }
  }
  }

  $_POST = fill_empty_array($_POST, Array(
  "fio",
  "info",
  "text"
  ));
  ?>

  <form method="post">
  Ваше имя:<br>
  <input name="fio" value="<? echo $_POST['fio'] ?>" style="width: 300px;"><br>

  Обратный адрес или телефон:<br>
  <input name="info" value="<? echo $_POST['info'] ?>" style="width: 300px;"><br>

  Текст:<br>
  <textarea name="text" style="width: 300px;"><? echo $_POST['text'] ?></textarea><br>

  <input type="submit">
  <input type="hidden" name="go" value="1">
  </form>
 */?>