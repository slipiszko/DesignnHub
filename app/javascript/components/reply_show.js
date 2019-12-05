  $(function() {
    $(".reply-btn").click(function() {
        $(".respone-show").slideToggle("fast");
    });
    
    $(".respone-content").click(function() {
        $(".respone-show").open();
    });
});

