/* 
* @Author: Marte
* @Date:   2016-04-19 10:25:02
* @Last Modified by:   Marte
* @Last Modified time: 2016-04-19 15:45:46
*/
/*导航栏下拉效果*/
$(document).ready(function(){
    $(".one-li2").hover(function() {
        /* Stuff to do when the mouse enters the element */
        $(".one-li-ul").stop().animate({opacity:"1"}, 1000);
    }, function() {
        /* Stuff to do when the mouse leaves the element */
        $(".one-li-ul").stop().animate({opacity:"0"}, 1000);
    });
});
/*全屏切换*/
$(function(){
    var imgpage=$(".middle-two img");
    var imgsize=imgpage.size();
    var index=0;

    function autoshow(){
        index++;
        if(index<=imgsize-1){
            change(index);
        }
        else{
            index=0;
            change(index);
        }
    }
    function change(index){
        imgpage.eq(index).animate({opacity:"1"}, 1000);
        imgpage.eq(index).siblings('img').animate({opacity:"0"}, 1000);
    }
    int=setInterval(autoshow,2000);
    function clearauto(){
        imgpage.mouseover(function(event) {
            /* Act on the event */
            clearInterval(int);
        });
    }
    function setauto(){
        imgpage.mouseout(function(event) {
            /* Act on the event */
            int=setInterval(autoshow,3000);
        });
    }
    clearauto();
    setauto();
})