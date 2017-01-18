/* 
* @Author: Marte
* @Date:   2016-04-06 15:53:06
* @Last Modified by:   Marte
* @Last Modified time: 2016-04-08 10:15:47
*/
$(document).ready(function(){
    $(".header-li").on("click",clickheader);
});
// 最顶部header导航栏点击
function clickheader(event){
    // $(this).children('span').css({
    //     borderTopWidth:'2px',
    //     borderTopColor:'#ea524f',
    //     borderTopStyle:'solid'
    // });
    // $(this).prevAll('li').find('span').css({
    //     borderTopWidth:'2px',
    //     borderTopColor:'white',
    //     borderTopStyle:'solid'
    // });
    // $(this).nextAll('li').find('span').css({
    //     borderTopWidth:'2px',
    //     borderTopColor:'white',
    //     borderTopStyle:'solid'
    // });
    $(this).children('span').addClass('header-lispan');
    $(this).prevAll('li').find('span').removeClass('header-lispan');
    $(this).nextAll('li').find('span').removeClass('header-lispan');
}
// 导航栏下拉菜单
$(function(){
    $(".header-li2").hover(function(event) {
        /* Act on the event */
        // alert("message")
        $(this).children("ul").stop().slideToggle();
    });
})
// 加载更多js
$(function(){
    $(".two-foot-cir").click(function(event) {
        /* Act on the event */
        $(".middle-two-bot4").removeClass('middle-two-bot4');
    });
})