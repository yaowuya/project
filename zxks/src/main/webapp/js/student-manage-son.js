$(function(event) {
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00000").addClass("open");
    $(".mid-left .nav .mid-left-li00000").children('ul').slideDown();

    //左边导航栏切换右边
    var apage = $(".mid-left .nav .mid-left-li00000").find("a");
    $(".mid-r-down .exampoint-manage").show().siblings('div').hide();
    apage.click(function(event) {
        /* Act on the event */
        $(".mid-r-down ." + event.target.className).show();
        $(".mid-r-down ." + event.target.className).siblings('div').hide();
    });

    //右边导航栏
    $(".r-down-mid .nav li").click(function(event) {
        $(this).addClass("active");
        $(this).siblings().removeClass('active');
    })

    //考点管理模块
    $(".r-down-footing .add-exampoint").show().siblings('div').hide();
    $(".r-down-mid .nav li a").click(function(event) {
        /* Act on the event */
        $(".r-down-footing ." + event.target.className).show();
        $(".r-down-footing ." + event.target.className).siblings('div').hide();
    });
})