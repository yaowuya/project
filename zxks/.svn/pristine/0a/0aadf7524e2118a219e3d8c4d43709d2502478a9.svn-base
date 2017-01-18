$(function(event) {
    //header 头部
    $(".header .nav .dropdown a").hover(function() {
        /* Stuff to do when the mouse enters the element */
        $(this).parent('li').addClass('open');
        $(this).siblings('ul').show(400);
    }, function() {
        /* Stuff to do when the mouse leaves the element */
        $(this).parent('li').removeClass('open');
        $(this).siblings('ul').hide();
    });
    $(".header .nav .dropdown ul").hover(function() {
        /* Stuff to do when the mouse enters the element */
        $(this).show();
    }, function() {
        /* Stuff to do when the mouse leaves the element */
        $(this).hide();
    });
    //middle 中间左边
    $(".mid-left-li > a").click(function(e) {
        e.preventDefault();
        var menu_li = $(this).parent("li");
        var menu_ul = $(this).next("ul");

        if (menu_li.hasClass("open")) {
            menu_ul.slideUp(350);
            menu_li.removeClass("open");
        } else {
            $(".mid-left .nav > li > ul").slideUp(350);
            $(".mid-left .nav > li").removeClass("open");
            menu_ul.slideDown(350);
            menu_li.addClass("open");
        }
    });

    $(".mid-left-li-li > a").click(function(e) {
        e.preventDefault();
        var menu_li = $(this).parent("li");
        var menu_ul = $(this).next("ul");

        if (menu_li.hasClass("open")) {
            menu_ul.slideUp(350);
            menu_li.removeClass("open")
        } else {
            $(".mid-left .nav > li > ul > li > ul").slideUp(350);
            $(".mid-left .nav > li > .nav > li").removeClass("open");
            menu_ul.slideDown(350);
            menu_li.addClass("open");
        }
    });
})
