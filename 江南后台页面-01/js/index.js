/* 
* @Author: Marte
* @Date:   2016-04-06 10:25:18
* @Last Modified by:   Marte
* @Last Modified time: 2016-04-06 10:25:29
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
