$(document).ready(function() {
  $('#per').DataTable();
  $('#recs').DataTable();
});


$(document).ready(function() {
  $(function() {
    $('a#show_delivery').click(function(event){
      event.preventDefault();
      $('div#delivery').toggle();
    });
  });
});
$(document).ready(function() {
  $(function() {
    $('a#show_items').click(function(event){
      event.preventDefault();
      $('div#items').toggle();
    });
  });
});
$(document).ready(function() {
  $(function() {
    $('a#show_pays').click(function(event){
      event.preventDefault();
      $('div#pays').toggle();
    });
  });
});
