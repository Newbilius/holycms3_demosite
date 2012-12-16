<?

Component::Factory("catalog20")
        ->SetParam("table", "foto")
        ->SetParam("url", "/photo/#id#")
        ->SetParam("detail_template", "")
        ->SetParam("items_template", "photo")
        ->SetParam("folders_template", "photo_folders")
        ->SetParam("add_to_bread", "caption")
        ->SetParam("set_title", "caption")
        ->SetParam("cache", "auto")
        ->SetParam("debug", false)
        ->Execute();
?>