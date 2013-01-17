<?
$cart_status_c = Component::Factory("cart_status")
        ->SetParam("table", "catalog")
        ->SetParam("cart_url", "/cart/")
        ->SetParam("cost_var", "cost")
        ->SetParam("cookie_var", "catalog_items")
;
$cart_status_c->Execute();
?>