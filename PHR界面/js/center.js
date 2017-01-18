$(function() {
    var a = 0;
    //右上方下拉菜单
    $(".header .text-right .nav .dropdown a").hover(function() {
        /* Stuff to do when the mouse enters the element */
        $(this).parent('li').addClass('open');
        $(this).siblings('ul').show(100);
    }, function() {
        /* Stuff to do when the mouse leaves the element */
        $(this).parent('li').removeClass('open');
        $(this).siblings('ul').hide();
    });

    $(".header .text-right .nav .dropdown ul").hover(function() {
        /* Stuff to do when the mouse enters the element */
        $(this).show();
    }, function() {
        /* Stuff to do when the mouse leaves the element */
        $(this).hide();
    });

    //导航栏
    $(".row-middle .active-page").show();
    $(".row-middle .active-page").siblings().hide();
    $(".header-one .navbar .nav li a").click(function(event) {
        /* Act on the event */
        // alert(".row-middle ."+event.target.className)
        // alert(event.target.tagName)
        $(".row-middle ." + event.target.className).show();
        $(".row-middle ." + event.target.className).siblings('div').hide();
        $(this).css({
            color: 'orange',
            property2: 'value2'
        });
        $(this).parent().siblings().children('a').css({
            color: 'white',
            property2: 'value2'
        });
    });
    $(".header-one .navbar .active-page").click(function() {
        $(".row-middle .active-page").show();
        $(".row-middle .active-page").siblings().hide();
        $(".header-one .navbar .nav li a").css({
            color: 'white',
            property2: 'value2'
        });
    });
    //我的账户
    $(".active-page-manage #check-info").show();
    $(".active-page-manage #check-info").siblings().hide()
    $(".active-page-panel .panel-body a").click(function(event) {
        // alert(".active-page-manage #"+event.target.id)
        $(".active-page-manage #" + event.target.id).show();
        $(".active-page-manage #" + event.target.id).siblings('div').hide();
    })

    //风险预警
    $(".risk-warning-panel #phr-danger-info").show().siblings().hide();
    $(".risk-warning .panel-body a").click(function(event) {
        $(".risk-warning-panel #" + event.target.id).show();
        $(".risk-warning-panel #" + event.target.id).siblings('div').hide();
    })
})
