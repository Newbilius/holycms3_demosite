<?
/*
 * корзина состоит из:
 * 1) списка товаров в ней
 * 2) формы заказа
 * 
 */
IncludeComponent("cart20","",Array(
		"table"=>"catalog",
                "item_url"=>"/catalog/#id#",
                "cost_var"=>"cost",             //в какой переменной содержится цена
                "cookie_var"=>"catalog_items",
                "list_items_template"=>"cart_list",
                "form_template"=>"default",
                "form_component"=>"cart_form",
                "back_cart_url"=>"/cart/",
));
?>