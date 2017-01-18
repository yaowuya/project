$(function(event) {
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li").eq(2).addClass("open");
    $(".mid-left .nav .mid-left-li").eq(2).children('ul').slideDown();

    //左边导航栏切换右边
    var apage = $(".mid-left .nav .mid-left-li").eq(2).find("a");
    $(".mid-r-down .test-sample").show().siblings('div').hide();
    apage.click(function(event) {
        /* Act on the event */

        $(".mid-r-down ." + event.target.className).show();
        $(".mid-r-down ." + event.target.className).siblings('div').hide();
    });
    //样卷管理模块
    //右边导航栏
    $(".test-sample .r-down-footing .nav li").click(function(event) {
        $(this).addClass("active");
        $(this).siblings().removeClass('active');
    })

    $(".test-sample .r-down-footer .add-sample").hide().siblings('div').hide();
    $(".test-sample .r-down-footing .nav li a").click(function(event) {
        /* Act on the event */
        $(".test-sample .r-down-footer ." + event.target.className).show();
        $(".test-sample .r-down-footer ." + event.target.className).siblings('div').hide();
    });

    //征题管理部分右边导航栏切换
    $(".recruitment-manage .r-down-footing .recruitment-plan").show().siblings('div').hide();
    $(".recruitment-manage .r-down-middle .nav li").click(function(event) {
        /* Act on the event */
        $(this).addClass('active');
        $(this).siblings('li').removeClass('active');
    });
    $(".recruitment-manage .r-down-middle .nav li a").click(function(event) {
        /* Act on the event */
        $(".recruitment-manage .r-down-footing ." + event.target.className).show();
        $(".recruitment-manage .r-down-footing ." + event.target.className).siblings('div').hide();
    });

    // 题库管理
    $(".question-sample .r-down-footing .statement-page").show().siblings('div').hide();
    $(".question-sample .r-down-middle .nav li").click(function(event) {
        /* Act on the event */
        $(this).addClass('active');
        $(this).siblings('li').removeClass('active');
    });
    $(".question-sample .r-down-middle .nav li a").click(function(event) {
        /* Act on the event */
        $(".question-sample .r-down-footing ." + event.target.className).show();
        $(".question-sample .r-down-footing ." + event.target.className).siblings('div').hide();
    });
})
