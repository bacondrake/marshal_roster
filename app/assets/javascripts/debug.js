// Closes closest .debug class with a slideUp.
// Used to remove debug information in development mode.

$(document).ready(function() {
  $('.debug').on('click', function () {
    $(this).slideUp();
  });
});
