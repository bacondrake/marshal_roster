$(document).ready(function() {
	// Closes closest parent div to .close class with a slideUp.
	// Used to smoothly close flash messages.
	$('.close').on('click', function(e) {
		$(this).closest('div').slideUp();
	});

	// Closes closest .debug class with a slideUp.
	// Used to remove debug information in development mode.
  $('.debug').on('click', function () {
    $(this).slideUp();
  });

	// Marshal emails will have a mailto: option that will
	// send to their individual email address.
  var email = $('.mail').text();
  $('.mail').attr("href", "mailto:" + email).text(email);
});
