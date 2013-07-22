$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('div.spidey').hide();


  $('div.easter_egg').click(function(){
    $('div.spidey').toggle();
  }); 

    $("#logout_form").on('submit', function(event) {
      event.preventDefault();
      $('#logout_space').append("You've logged out.")
    });


});
