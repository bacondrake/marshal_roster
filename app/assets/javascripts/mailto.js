$(document).ready(function() {
  var email = $('.mail').text();
  $('.mail').attr("href", "mailto:" + email).text(email);
});
