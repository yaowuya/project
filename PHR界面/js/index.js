$(function(event){
   $(".nav .dropdown a").hover(function() {
       /* Stuff to do when the mouse enters the element */
       $(this).parent('li').addClass('open');
       $(this).siblings('ul').show(400);
   }, function() {
       /* Stuff to do when the mouse leaves the element */
       $(this).parent('li').removeClass('open');
       $(this).siblings('ul').hide();
   });
   $(".nav .dropdown ul").hover(function() {
       /* Stuff to do when the mouse enters the element */
       $(this).show();
   }, function() {
       /* Stuff to do when the mouse leaves the element */
       $(this).hide();
   });
})