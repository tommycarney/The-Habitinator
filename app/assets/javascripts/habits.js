$(document).ready(function(){ 
$('.best_in_place').bind('ajax:success', function() {
 $('p.notice').text("You just updated your habits");
});

$('.edit').click(function(e) { $(this).prev().click() })

});