/* 
* @Author: Marte
* @Date:   2016-04-05 15:38:04
* @Last Modified by:   Marte
* @Last Modified time: 2016-04-12 18:37:40
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
// 移动到菜品时，显示编辑和删除
$(function(){
    $(".right-two-ultwo li").hover(function() {
        /* Stuff to do when the mouse enters the element */
        $(this).children('.right-two-uldiv1').stop().animate({
            opacity:0.93
            },
            500, function() {
            /* stuff to do after animation is complete */
        });
    }, function() {

        /* Stuff to do when the mouse leaves the element */
         $(this).children('.right-two-uldiv1').stop().animate({
            opacity:0
            },
            500, function() {
            /* stuff to do after animation is complete */
        });
    });
})
// 点击美食列表添加
$(function(){
    $(".right-two-upbtn").click(function(event) {
        /* Act on the event */
        $(".add-vegetable").show();
    });
    $(".add-input-del").click(function(event) {
        /* Act on the event */
        $(".add-vegetable").hide();
    });
})
// 美食列表切换
$(function(){
    var lipage=$(".right-two-ulone li");
    var ulpage=$(".right-two-down ul");
    var index=0;
    lipage.click(function(event) {
        /* Act on the event */
        index=$(this).index();
        exchange(index);
    });

    function exchange(index){
        lipage.eq(index).addClass('right-two-ulone-li').siblings('li').removeClass('right-two-ulone-li');
        // alert(ulpage.eq(index).attr("class"));
        ulpage.eq(index).siblings('ul').animate({
            opacity: 0
           },
            500, function() {
            /* stuff to do after animation is complete */
        });
        ulpage.eq(index).animate({
            opacity: 1
            },
            500, function() {
            /* stuff to do after animation is complete */
        });
    }
})