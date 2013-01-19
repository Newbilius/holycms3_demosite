<?
global $_selected_page;
$_selected_page['detail_text'];
?>
<?
if (is_array($errors)) {
    ?>
    <div class="alert alert-error">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <?
        foreach ($errors as $_error) {
            ?>
            <br><span style="color:red;"><? echo $_error; ?></span>
            <?
        }
        ?>
    </div><?
};
    ?>
<form method="post">
    <fieldset>
        Ваше имя:<br>
        <input type="text" name="fio" value="<? echo $form_values['fio'] ?>" style="width: 300px;"><br>

        E-mail:<br>
        <input type="text" name="email" value="<? echo $form_values['email'] ?>" style="width: 300px;"><br>

        Адрес и дополнительные данные:<br>
        <textarea rowe="12" name="text" style="width: 300px;height:120px;"><? echo $form_values['text'] ?></textarea><br> 

        <input class="btn btn-success" type="submit" value="Заказать">
        <input type="hidden" name="go" value="1">
    </fieldset>
</form>