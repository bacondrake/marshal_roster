$('.close').on('click', function() {
	console.log("before");
	(this).closest('div').hide();
	(this).hide();
	console.log("after");
});

// <div class="alert alert-info alert-dismissable">
// 	<span type="button" class="close" data-dismiss="alert">x</span>
// </div>