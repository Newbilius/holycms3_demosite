<?
if (!defined('HCMS')) die();
?>
    <form class="form-inline" action="<? echo $params['url']?>">
        <input type="text" name="find" value="<? echo $params['find_text']?>">
        <input class="btn" type="submit" value="Искать">
    </form>
	
<?
if (count($result)>0)
	{
	?>
	<ul>
	<?
		foreach ($result as $item){?>
			<?=$item['count']?>) <a href=<?=$item['link']?>><?=$item['caption']?></a><BR>
			<?};
	?>			
</ul>
<?
	}else
	
	{
		?>
		<p>Ничего не найдено.</p>
		<?
	};
?>