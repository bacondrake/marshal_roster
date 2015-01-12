$(document).ready(function() {
	$('.close').on('click', function(e) {
		$(this).closest('div').slideUp();
	});
});

// <div class="alert alert-info alert-dismissable">
// 	<span type="button" class="close" data-dismiss="alert">x</span>
// </div>
