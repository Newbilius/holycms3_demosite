<?
echo $_selected_page['detail_text'];

$_POST = clear_array($_POST);

if (isset($_POST['go'])) {
    $valid = new HolyValidator(Array(
                "fio" => "���",
                "info" => "�������� ����� ��� �������",
                "text" => "�����",
            ));

    $valid->AddRule("not_empty", 'fio')
            ->AddRule("not_empty", 'info')
            ->AddRule("not_empty", 'text');

    $valid->Check($_POST);

    $errors = $valid->Complete();

    if ($errors === true) {
        echo "<p style='color:green'>��������� ���������� �������</p>";
        
        
        $mail_text = "���:" . $_POST["fio"] . "<BR>";
        $mail_text.="������ ��� �����:" . $_POST["info"] . "<BR>";
        $mail_text.="������:<BR>" . $_POST["text"] . "<BR>";
        global $_OPTIONS;
        
        unset($_POST);
        $_POST=array();
        
        HolyMail("info@" . $_SERVER['HTTP_HOST'], $_OPTIONS['mail'], "��������� ����� �������� �����", $mail_text);
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
    ���� ���:<br>
    <input name="fio" value="<? echo $_POST['fio'] ?>" style="width: 300px;"><br>

    �������� ����� ��� �������:<br>
    <input name="info" value="<? echo $_POST['info'] ?>" style="width: 300px;"><br>

    �����:<br>
    <textarea name="text" style="width: 300px;"><? echo $_POST['text'] ?></textarea><br> 

    <input type="submit">
    <input type="hidden" name="go" value="1">
</form>
