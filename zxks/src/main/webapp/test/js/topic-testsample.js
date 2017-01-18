$(function(event){
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li").eq(2).addClass("open");
    $(".mid-left .nav .mid-left-li").eq(2).children('ul').slideDown();
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
  
})