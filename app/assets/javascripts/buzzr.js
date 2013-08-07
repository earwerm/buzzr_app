var map;
var canvas;

var display_map = function (lat, long, zoom) {
  canvas = $('#map_canvas')[0];

  if (!canvas)
    return; // I QUIT

  var mapOptions = {
    center: new google.maps.LatLng(lat, long),
    zoom: zoom,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(canvas, mapOptions);
};

var add_marker = function (lat, long, title) {
  var latlng = new google.maps.LatLng(lat, long);
  var marker = new google.maps.Marker({position: latlng, map: map, title: title, icon: '/assets/instagram-shadow.png'});
};

var center_map = function(lat, long) {
  var latlng = new google.maps.LatLng(lat, long);
  map.setCenter(latlng)
}

$(document).ready(function () {
  display_map(41, -74, 10);

  $('form').on('submit', function (event) {
    //debugger;
    event.preventDefault();
    var loc = $('#search').val();

    $.ajax({
      url: '/points/' + escape(loc),
      method: 'GET',
      dataType: 'json'
    }).done(function (result) {
      center_map(result.latitude, result.longitude
        );
      $.each(result.data, function (i, marker) {
        add_marker(marker.lat, marker.long, marker.title);
      })
    });
    return false;
  });
});

