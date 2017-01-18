/* 
* @Author: Marte
* @Date:   2016-04-08 10:09:18
* @Last Modified by:   Marte
* @Last Modified time: 2016-04-09 00:04:55
*/

$(document).ready(function(){
    $(".header-li").on("click",clickheader);
});
// 最顶部header导航栏点击
function clickheader(event){
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

// 中部图片切换特效
// $(function(){
//     $(".mid-foot-ul li").click(function(event) {
//         /* Act on the event */
//         $(this).addClass('mid-foot-li').children('p').addClass('mid-foot-p');
//         $(this).siblings('li').removeClass('mid-foot-li').children('p').removeClass('mid-foot-p');
//     });
// })

$(function(){
    var lipage=$(".middle-foot .mid-foot-ul").children('li');
    var div=$(".middle-foot .middle-foot-downall").children('div');
    var divsum=div.size();
    // alert(divsum);
    var index=0;
    var t;
    //分页按钮点击
    
    lipage.click(function(event) {
        /* Act on the event */
        index=$(this).index();
        change(index);
    });
    // 切换过程
    function change(index){
        lipage.eq(index).addClass('mid-foot-li').children('p').addClass('mid-foot-p');
        lipage.eq(index).siblings('li').removeClass('mid-foot-li').children('p').removeClass('mid-foot-p');
        // div.stop();
        // alert(div.eq(index).attr("class"));
        //隐藏当前元素
        // div.eq(index).siblings('div').animate({
        //     opacity: 0
        //     },
        //     1000, function() {
        //     /* stuff to do after animation is complete */
        // });
        // div.eq(index).animate({
        //     opacity: 1
        //     },
        //     speed, function() {
        //     /* stuff to do after animation is complete */
        // });
        div.eq(index).siblings('div').fadeOut('1000', function() {
            
        });
        div.eq(index).fadeIn('1000', function() {
            
        });
    }
})