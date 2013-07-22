$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('div.spidey').hide();


  $('div.easter_egg').click(function(){
    $('div.spidey').toggle();
  });

  $(".add_deck_button").click(function () {
  $(".fade_initiate").hide();
  $(".fade_in_items").fadeIn("slow");
  document.getElementById("deck_name").focus();
  });

  $(".cancel_new_deck").click(function () {
  $(".fade_in_items").hide();
  $(".fade_initiate").fadeIn("slow");
  });

  $(".add_card_button").click(function () {
  $(".fade_initiate").hide();
  $(".fade_in_items").fadeIn("slow");
  document.getElementById("definition_name").focus();
  });

  $(".cancel_new_card").click(function () {
  $(".fade_in_items").hide();
  $(".fade_initiate").fadeIn("slow");
  });

  $(".message").fadeIn("fast").delay(1000).fadeOut("slow");
});
