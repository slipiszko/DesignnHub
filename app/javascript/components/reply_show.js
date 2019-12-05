  $(function() {
    $(".reply-btn").click(function() {
        $(".respone-show").slideToggle("fast");
    });
    
    $(".respone-question-content").click(function() {
        $(".respone-show").open();
    });
});

