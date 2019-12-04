  $(function() {
    $(".reply-btn").click(function() {
        $(".reply-show").slideToggle("fast");
    });
    
    $(".respone-show").click(function() {
        $(".reply-show").open();
    });
});

