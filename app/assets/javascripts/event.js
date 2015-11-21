
$(document).ready(function() {
	console.log("ready");

  $('.circle').click(function(){
  	$('.circle').removeClass("filled");
  	console.log("clicked!");
  	$(this).addClass("filled");

  	$('.connector-top')[0].removeClass('connector-top');
  });

});