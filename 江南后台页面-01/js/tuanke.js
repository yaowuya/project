/* 
* @Author: Marte
* @Date:   2016-04-13 09:40:45
* @Last Modified by:   Marte
* @Last Modified time: 2016-04-13 18:16:14
*/

$(function(){
    // 有 hide 类的  是隐藏的 ，没有的代表的是显示的
    $(".box span").click(function(e) {
        //$(this).siblings().show()
        $(this).parent().removeClass("hide").siblings().addClass("hide")
    });
     $(".box .colo li").click(function(event) {
        $(this).css({color:'#EA5C46'}).siblings().css({color:"#fff"});
                // $(this).css({color: '#EA5C46'}).siblings().css({color:""});
    });
})
// 编辑
$(function(){
    var editbtn=$(".tuan-up-right .tuan-up-edit");
    var delbtn=$(".tuan-up-right .tuan-up-del");
    var addbtn=$(".tuan-up-right .tuan-up-add");
    var cancelbtn=$(".tuan-up-right .tuan-up-cancel");
    // 弹出框按钮参数
    var sure=$(".tuan-sure");
    var no=$(".tuan-no");

    var tablenone=$(".tuan-table .tuan-none");

    var cir1=$(".tuan-none .tuan-td-cir1");
    var cir2=$(".tuan-none .tuan-td-cir2");
// 编辑按钮
    editbtn.click(function(event) {
        /* Act on the event */
        // alert("message");
        delbtn.show();
        editbtn.hide();
        addbtn.hide();
        cancelbtn.show();
        tablenone.show();

        // 点击打钩状态
        var cirindex=0;
        var a = new Array();
        cir1.click(function(event) {
        /* Act on the event */
        // alert("message");
        $(this).hide();
        $(this).siblings('.tuan-td-cir2').show();
        a[cirindex]=$(this);
        cirindex++;
        // 点击删除按钮
        delbtn.click(function(event) {
            /* Act on the event */
            $(".tuan-tanchu").show();
            no.click(function(event) {
                /* Act on the event */
                $(".tuan-tanchu").hide();
                $(".tuan-td-cir2").hide();
                $(".tuan-td-cir1").show();
                cirindex=0;
                a=[];
            });
            sure.click(function(event) {
                /* Act on the event */
                for(var i=0;i<a.length;i++){
                    a[i].parents("tr").remove();
                }
                $(".tuan-tanchu").hide();
            });
        });
        
        });
        // 取消编辑状态
        cancelbtn.click(function(event) {
            /* Act on the event */
        tablenone.hide();
        delbtn.hide();
        cancelbtn.hide();
        editbtn.show();
        addbtn.show();
        cir1.show();
        cir2.hide();
        });
        cir2.click(function(event) {
            /* Act on the event */
        $(this).hide();
        $(this).siblings('.tuan-td-cir1').show();      
        });
    });

})
// 新增
$(function(){
    var addbtn=$(".tuan-up-add");
    var putnobtn=$(".add-tanchu-btn .putnobtn");

    addbtn.click(function(event) {
        /* Act on the event */
        $(".tuan-add-tanchu").show();
        putnobtn.click(function(event) {
            /* Act on the event */
            $(".tuan-add-tanchu").hide();
        });
    });
})
// 座位编辑
$(function(){
    var enter=$(".tuan-td-a");
    var seat=$(".tuan-seat");
    var seatcir1=$(".seat-div-cir1");
    var seatcir2=$(".seat-div-cir2");
    var cancelbtn=$(".seat-btn-cancel");

    enter.click(function(event) {
        /* Act on the event */
        seat.show();

        seatcir1.click(function(event) {
            /* Act on the event */
            $(this).hide();
            $(this).siblings('.seat-div-cir2').show();
        });
        //打钩
        seatcir2.click(function(event) {
            /* Act on the event */
            $(this).hide();
            $(this).siblings('.seat-div-cir1').show();
        });
        // 取消退出
        cancelbtn.click(function(event) {
            /* Act on the event */
            seat.hide();
            seatcir1.show();
            seatcir2.hide();
        });
    });
})