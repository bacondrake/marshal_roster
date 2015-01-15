// Closes closest parent div to .close class with a slideUp.
// Used to smoothly close flash messages.

$(document).ready(function() {
	$('.close').on('click', function(e) {
		$(this).closest('div').slideUp();
	});
});
