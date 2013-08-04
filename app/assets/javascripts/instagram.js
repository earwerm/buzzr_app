$(document).ready(function (){

var results = function() {};

  var draw_points = function (locale) {
    $.ajax({
      url: '/points/' + locale,//xxx
      dataType: 'json',
    }).done(function (results) {

      // $.each(results.data, function (d) {
      //   Google.map.add_marker(d.name, d.lat, d.long);//xxx
      // });

    });
  }

// var locale = $("#location')

  draw_points('Merrylands');

});