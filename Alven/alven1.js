/* 
 * @Author: Marte
 * @Date:   2016-03-25 11:23:20
 * @Last Modified by:   Marte
 * @Last Modified time: 2016-04-06 16:40:29
 */

// $(function(){
//    $(".mid_fif_2rleft a").click(function(event) {
//        $(".container-one").show();
//    document.documentElement.style.overflowY = 'hidden';
//    });


// })


$(document).ready(function() {
    // $(".mid_four_li_div1 a,.mid_four_li_div1 p").on("click", checkmore);
    $(".mid_fif_2rone a,.mid_fif_2rone h2,.mid_fif_2rone .mid_fif_p2").on("click", checkone);
    $(".mid_fif_2rtwo a,.mid_fif_2rtwo h2,.mid_fif_2rtwo .mid_fif_p2").on("click", checktwo);
    $(".mid_fif_2rthree a,.mid_fif_2rthree h2,.mid_fif_2rthree .mid_fif_p2").on("click", checkthree);
    $(".header11_img").on("click", closee);
    $(".mid_four_2 ul li").on("mouseover", mOver);
    $(".mid_four_2 ul li").on("mouseout", mOut);
});


function checkmore(event) {
    $(".container-zero").show();
    document.documentElement.style.overflowY = 'hidden';
}

function checkone(event) {
    $(".container-one").show();
    document.documentElement.style.overflowY = 'hidden';
}

function checktwo(event) {
    $(".container-two").show();
    document.documentElement.style.overflowY = 'hidden';
}

function checkthree(event) {
    $(".container-three").show();
    document.documentElement.style.overflowY = 'hidden';
}

function closee(event) {
    $(".container11").hide();
    document.documentElement.style.overflowY = '';
}

function mOver(event) {
    $(this).children(".mid_four_li_div1").css({
        "display": "block"
    });
}

function mOut(event) {
    $(this).children(".mid_four_li_div1").css({
        "display": "none"
    });
}

// $(function(){
//     $(".header_mid ul li").click(function(event) {
//         $(this).addClass('head_ul_li').siblings().children().removeClass("head_ul_li");
//     });
// })