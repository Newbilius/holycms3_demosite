<?
echo $_selected_page['detail_text'];

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
