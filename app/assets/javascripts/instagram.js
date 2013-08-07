$(document).ready(function (){

// upon clicking the button with #addresses id, initialize the locale variable with the addresses value, run draw_points function;//
  $('#addresses').click( function (){
    var locale = $('#address').val();
    draw_points(locale);
  });

var results = function() {};
// HELP: what does this do?//
  var draw_points = function (locale) {
    $.ajax({
      url: '/points/' + locale,
      dataType: 'json',
    }).done(function (results) {
// iterates the add_marker function by extracting the data from the json object
        $.each(results.data,function(i,l) {
          add_marker(l.latitude,l.longitude,l.name);
        });
// centers map using first object lat and long
      center_map(results.data[0].latitude,results.data[0].longitude);
// instagram sometimes returns errors, this makes the alert aware;
    }).error(function(results) {
        alert(results);
      });
  };
});

// declares map and canvas variables, makes them globally available
var map;
var canvas;

var center_map = function (lat,long) {
 var position = new google.maps.LatLng(lat, long);
 map.setCenter(position);
};
  // creates map using googlemaps method syntax
var display_map = function (lat, long, zoom) {
  canvas = $('#map_canvas')[0];
  // changes map_canvas from jquery to string for google api to work with
  if (!canvas)
    return;

// options for map format
  var mapOptions = {
    center: new google.maps.LatLng(lat, long),
    zoom: zoom,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(canvas, mapOptions);
};

// append marker to map
var add_marker = function (lat, long, title) {
  var latlng = new google.maps.LatLng(lat, long);
  // var marker = new google.maps.Marker({position: latlng, map: map, title: title});
    var marker = new google.maps.Marker({position: latlng, map: map, title: title, icon: '/assets/instagram-shadow.png'});
};

$(document).ready(function () {
  // displays map with sydney cbd as location upon document loading
  display_map(-33.89336, 151.217167, 13);
});

