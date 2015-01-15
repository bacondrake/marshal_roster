// Marshal emails will have a mailto: option that will
// send to their individual email address.

$(document).ready(function() {
  var email = $('.mail').text();
  $('.mail').attr("href", "mailto:" + email).text(email);
});
