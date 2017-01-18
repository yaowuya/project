$(function(event) {
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li").eq(3).addClass("open");
    $(".mid-left .nav .mid-left-li").eq(3).children('ul').slideDown();

    //左边导航栏切换右边
    var apage = $(".mid-left .nav .mid-left-li").eq(3).find("a");
    $(".mid-r-down .buy-textbook").show().siblings('div').hide();
    apage.click(function(event) {
        /* Act on the event */
        $(".mid-r-down ." + event.target.className).show();
        $(".mid-r-down ." + event.target.className).siblings('div').hide();
    });

    //教材采购模块---start
    $(".buy-textbook .nav li").click(function(event) {
        $(this).addClass('active').siblings('li').removeClass('active');
    })
    $(".buy-textbook .r-down-footing .dealer-buy-textbook").show().siblings('div').hide();
    $(".buy-textbook .r-down-middle .nav li a").click(function(event) {
            $(".buy-textbook .r-down-footing ." + event.target.className).show();
            $(".buy-textbook .r-down-footing ." + event.target.className).siblings('div').hide();
        })
        // <!-- 经销商修改跳转页面 -->
    $(".dealer-buy-textbook .table td .dealer-buy-xiugai").click(function(event) {
            $(".buy-textbook .r-down-footing .xiugai").show().siblings('div').hide();
            $(".xiugai ." + event.target.className).show().siblings().hide();
        })
        // 教材管理--修改跳转页面
    $(".infomation-buy-textbook .table td .infomation-buy-xiugai").click(function(event) {
            $(".buy-textbook .r-down-footing .xiugai").show().siblings('div').hide();
            $(".xiugai ." + event.target.className).show().siblings().hide();
        })
        //教材订购单--修改页面
    $(".note-order-textbook .table td .note-order-xiugai").click(function(event) {
            $(".buy-textbook .r-down-footing .xiugai").show().siblings('div').hide();
            $(".xiugai ." + event.target.className).show().siblings().hide();
        })
        //教材采购模块---end
        //入库调拨管理模块--start
    $(".putin-textbook .nav li").click(function(event) {
        $(this).addClass('active').siblings('li').removeClass('active');
    })
    $(".putin-textbook .r-down-footing .reject-register-putin").show().siblings('div').hide();
    $(".putin-textbook .r-down-middle .nav li a").click(function(event) {
            $(".putin-textbook .r-down-footing ." + event.target.className).show();
            $(".putin-textbook .r-down-footing ." + event.target.className).siblings('div').hide();
        })
        //入库调拨管理模块--end
        //库存管理--start
    $(".stock-textbook .nav li").click(function(event) {
        $(this).addClass('active').siblings('li').removeClass('active');
    })
    $(".stock-textbook .r-down-footing .search-stock").show().siblings('div').hide();
    $(".stock-textbook .r-down-middle .nav li a").click(function(event) {
            $(".stock-textbook .r-down-footing ." + event.target.className).show();
            $(".stock-textbook .r-down-footing ." + event.target.className).siblings('div').hide();
        })
        //库存管理--end
        //预定邮购及退书管理--start
        //导航栏
    $(".mail-return-textbook .nav li").click(function(event) {
        $(this).addClass('active').siblings('li').removeClass('active');
    })
    $(".mail-return-textbook .r-down-footing .register-customer-mail").show().siblings('div').hide();
    $(".mail-return-textbook .r-down-middle .nav li a").click(function(event) {
            $(".mail-return-textbook .r-down-footing ." + event.target.className).show();
            $(".mail-return-textbook .r-down-footing ." + event.target.className).siblings('div').hide();
        })
        // 查询客户信息--修改跳转
    $(".search-customer-mail .table td .search-customer-xiugai").click(function(event) {
            $(".mail-return-textbook .r-down-footing .mail-xiugai").show().siblings('div').hide();
            $(".mail-xiugai ." + event.target.className).show().siblings().hide();
        })
        // 查询订单信息--修改跳转
    $(".search-order-mail .table td .search-order-xiugai").click(function(event) {
            $(".mail-return-textbook .r-down-footing .mail-xiugai").show().siblings('div').hide();
            $(".mail-xiugai ." + event.target.className).show().siblings().hide();
        })
        //预定邮购及退书管理--end
        //教材财务管理--start
        //导航栏
    $(".finance-textbook .nav li").click(function(event) {
        $(this).addClass('active').siblings('li').removeClass('active');
    })
    $(".finance-textbook .r-down-footing .periodicals-finance").show().siblings('div').hide();
    $(".finance-textbook .r-down-middle .nav li a").click(function(event) {
            $(".finance-textbook .r-down-footing ." + event.target.className).show();
            $(".finance-textbook .r-down-footing ." + event.target.className).siblings('div').hide();
        })
        //教材财务管理--end
})
