// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
    // $('.map3').hover(function() {

    // })



  var getNeighborhoods = function(citysearch_id){
    var $neighborhoods = $('#neighborhood');
    $($neighborhoods).empty();

    $.get('/neighborhoods/find_by_city', { citysearch_id: citysearch_id }, function(data){
      console.log(data.neighborhoods);
      $.each(data.neighborhoods, function(index, neighborhood){
        var option = $('<option />');
        option.attr('value', neighborhood.id);
        option.text(neighborhood.name);
        option.appendTo($neighborhoods);
      });
    })
  };


  var getSelectedCity = function(){
    return $('#citysearch').val();
  };

  $('#citysearch').change(function(){
    var citysearch_id = getSelectedCity();
    getNeighborhoods(citysearch_id);
  });

  getNeighborhoods(getSelectedCity());

  // $.ajax({
  //   url: "http://localhost:3000/lands.json",
  //   success: function(data) {
  //     console.log(data);
  //   }
  // });

  $('.map').hide();
  $('.street').mouseover(function(){
    $(this).hide();
    $('.map').show();
  });
  $('.map').mouseout(function(){
    $(this).hide();
    $('.street').show();
  })
});