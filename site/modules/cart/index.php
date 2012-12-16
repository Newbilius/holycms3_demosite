<?
/*
 * корзина состоит из:
 * 1) списка товаров в ней
 * 2) формы заказа
 * 
 */
Component::Factory("cart20")
        ->SetParam("table", "catalog")
        ->SetParam("item_url", "/catalog/#id#")
        ->SetParam("cost_var", "cost")
        
        ->SetParam("cookie_var", "catalog_items")
        ->SetParam("list_items_template", "cart_list")
        ->SetParam("form_template", "default")
        ->SetParam("form_component", "cart_form")
        ->SetParam("back_cart_url", "/cart/")
        ->SetParam("cache", "auto")
        ->SetParam("debug", false)
        ->Execute();
?>