$(document).ready(function() {
	$('.close').on('click', function(e) {
		$(this).closest('div').slideUp();
	});
});
