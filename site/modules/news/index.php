<?

Component::Factory("news20")
        ->SetParam("table", "news")
        ->SetParam("url", "/news/#id#")
        ->SetParam("back_url", "/news/")
        ->SetParam("detail_template", "news")
        ->SetParam("list_template", "news")
        ->SetParam("add_to_bread", "caption")
        ->SetParam("set_title", "caption")
        ->SetParam("cache", "auto")
        ->SetParam("debug", false)
        ->Execute();
?>