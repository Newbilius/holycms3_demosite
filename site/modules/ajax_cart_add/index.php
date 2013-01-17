<?php
Component::Factory("ajax_cart")
        ->SetParam("table", "catalog")
        ->SetParam("cost_var", "cost")
        ->SetParam("cookie_var", "catalog_items")
        ->SetParam("cache", "auto")
        ->SetParam("debug", false)
        ->SetParam("back_cart_url", "/cart/")
        ->Execute();
?>
