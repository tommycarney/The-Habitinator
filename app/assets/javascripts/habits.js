$(document).ready(function(){ 
$('.best_in_place').bind('ajax:success', function() {
 $('p.notice').text("You just updated your habits");
});

});