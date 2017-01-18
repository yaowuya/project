$(function(event) {
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00001").addClass("open");
    $(".mid-left .nav .mid-left-li00001").children('ul').slideDown();

    //左边导航栏切换右边
    var apage = $(".mid-left .nav .mid-left-li00001").find("a");
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
    
 // 查询
    var tbodyTr = $(".btn-search .table tbody");
    var tdLength = $(".btn-search .table thead th").size() - 1;
    var trVal = $(".exampoint-manage .r-down-footing .table tbody tr");
    var trLength = trVal.size();
    var searchTrLength = 0;
    // 用于判断页面刷新
    var refresh = 0;
    // 查询table隐藏
    $(".r-down-footer .btn-search").hide();
    // 点击查询
    $(".exampoint-manage .r-down-footing form .btn-search").click(function(event) {
        // 刷新
         //alert(tdLength);
        refresh++;
        if (refresh == 1) {
            tbodyTr.empty();
            // alert(refresh);
            refresh--;
        }
        $(".r-down-footer .btn-search").show();
        // 获取搜索框的值
        var inputValue = $(".exampoint-manage .r-down-footing form #inputvalue").val();
        console.log("输入的值："+inputValue);
        // 点击查询后，重置搜索框的值
        $(".exampoint-manage .r-down-footing form #inputvalue").prop('value', '');
        // var tdVal = 0;
        var treq = 0;
        // 判断搜索是否在同一行
        var panduan=0;

        searchTrLength = tbodyTr.children('tr').size();
        // alert(trLength);
        if ($.trim(inputValue) != "") {
            for (var i = 0; i < trLength; i++) {
                panduan=0;
                for (var j = 0; j < tdLength; j++) {
                    treq = trVal.eq(i).children('td').eq(j).filter(":contains('" + inputValue + "')");
                    if (treq.text()) {
                        panduan++;
                        if(panduan==1){
                           addTable(searchTrLength, i);
                        }
                    }
                }
            }
        } else {
            alert('无匹配');
        }
    });

    function addTable(searchTrLength, i) {
        var tdVal = 0;
        if (searchTrLength == 0) {
            var tra = $("<tr></tr>");
            // alert("dsa")
            for (var t = 0; t < tdLength; t++) {
                tdVal = trVal.eq(i).children('td').eq(t).text();
                $("<td></td>").appendTo(tra).text(tdVal);
            }
            var tdaa=trVal.eq(i).children('td').eq(tdLength).find('a');

            var tda = $("<a></a>").text("修改").attr({
                role: 'button',
                class:'btn btn-primary',
                href: tdaa.attr("href"),
                style:'padding:0px 33px;',
            });
            var tdd = $("<td></td>")
            tda.appendTo(tdd)
            tdd.appendTo(tra);
            tra.appendTo(tbodyTr);
        } else {
            // alert(searchTrLength+"i:"+i);
             var tra = $("<tr></tr>");
            // alert("dsa")
            for (var t = 0; t < tdLength; t++) {
                tdVal = trVal.eq(i).children('td').eq(t).text();
                $("<td></td>").appendTo(tra).text(tdVal);
            }
            var tdaa=trVal.eq(i).children('td').eq(tdLength).find('a');
            var tda = $("<a></a>").text("修改").prop({
                role: 'button',
                className:'btn btn-primary',
                href: tdaa.attr("href"),
                stype:'padding:0px 33px;',
            });
            var tdd = $("<td></td>")
            tda.appendTo(tdd)
            tdd.appendTo(tra);
            tbodyTr.children('tr').eq(searchTrLength - 1).after(tra);
        }
    };
})