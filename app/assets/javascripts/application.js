// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
jQuery(function() {
	// $("a").click(function() {
		// $(this).addClass("test");
		// //$(this).hide("slow");
	// });
	
	// $('#test').hide();
	$('.show-hide').click(function() {
		// $('#test').slideToggle();
		jQuery('#test').css("color", "blue");
		// jQuery('#test').effect("highlight", {}, 1500);
		$('#test').hide();
		// $('#test').fadeOut('slow');
	});
		
});
