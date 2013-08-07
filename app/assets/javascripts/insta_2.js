$(document).ready(function () {

    // upon clicking the button with #addresses id, initialize the locale variable with the addresses value, run draw_points function;//
    $('#addresses').click(function (m) {
        alert('Getting info from Instagram, this may take a few seconds......')
        var locale = $('#address').val();
        draw_points(locale);
    });

    var results = function () {};
    // HELP: what does this do?//
    var draw_points = function (locale) {
        $.ajax({
            url: '/points/' + locale,
            dataType: 'json',
        }).done(function (results) {
            // iterates the add_marker function and parses the data from the json object to add_marker
            $.each(results.data, function (i, l) {
                add_marker(l.latitude, l.longitude, l.name, l.id);
                // makes all 4 elements available to dependent function
                listrender(l);
            });
            // centers map using first object lat and long
            center_map(results.data[0].latitude, results.data[0].longitude);
            // instagram sometimes returns errors, this makes the alert aware;
        }).error(function (results) {
            alert("error! instagram says:" + results);
        });
    };
});

// declares map and canvas variables, makes them globally available
var map;
var canvas;

// centers map on first JSON object result
var center_map = function (lat, long) {
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

  var styles = [
    {
      stylers: [
        { hue: "#00ffe6" },
        { saturation: -20 }
      ]
    },{
      featureType: "road",
      elementType: "geometry",
      stylers: [
        { lightness: 100 },
        { visibility: "simplified" }
      ]
    },{
      featureType: "road",
      elementType: "labels",
      stylers: [
        { visibility: "off" }
      ]
    },{
      featureType: "road",
      elementType: "geometry.fill",
      stylers: [
        { invert_lightness: true },
        { gamma: 1 },
        { visibility: "simplified" },
        { weight: 1.2 }
      ]
    },{
      featureType: "water",
      elementType: "geometry.fill",
      stylers: [
        { inverse_lightness: false },
        { gamma: 1 },
        { visibility: "simplified" },
        { weight: 1.2 }
      ]

    }
  ]
  map.setOptions({styles: styles});
};

// append marker to map
var add_marker = function (lat, long, title, id) {
    var latlng = new google.maps.LatLng(lat, long);
    // var marker = new google.maps.Marker({position: latlng, map: map, title: title etc});
    var marker = new google.maps.Marker({
        position: latlng,
        map: map,
        title: title,
        icon: '/assets/instagram-shadow.png'
    });
    // pushes the marker data into empty array marker_list
    // marker_list.push(marker);
    marker.setValues({
        id: id
    });
    console.log('marker for', title, 'id', id);
    // Event handler for marker clicking/listening
    google.maps.event.addListener(marker, 'click', function (event) {
        inforender(marker)
    });
};

$(document).ready(function () {
    // displays map with sydney cbd as location upon document loading
    display_map(geoip_latitude(), geoip_longitude(), 16);

});
    // TINKERING WITH INFOWINDOW BELOW HERE:
    // var latlng = new google.maps.LatLng(-33.89336, 151.217167);

    // var infowindow = new google.maps.InfoWindow({
    //     content: 'Change the zoom level',
    //     position: latlng
    // });
    // infowindow.open(map);

    // google.maps.event.addListener(map, 'zoom_changed', function () {
    //     var zoomLevel = map.getZoom();
    //     map.setCenter(latlng);
    //     infowindow.setContent('Zoom: ' + zoomLevel);

    //     google.maps.event.addDomListener(window, 'load', initialize);
    // });
    //
    //
    //
    //
    // $('#buttonz').click

// $(document).ready(function (){

// // upon clicking the button with #addresses id, initialize the locale variable with the addresses value, run draw_points function;//
//   $('#addresses').click( function (){
//     var locale = $('#address').val();
//     draw_points(locale);
//   });

// var results = function() {};
// // HELP: what does this do?//
//   var draw_points = function (locale) {
//     $.ajax({
//       url: '/points/' + locale,
//       dataType: 'json',
//     }).done(function (results) {
// // iterates the add_marker function by extracting the data from the json object
//         $.each(results.data,function(i,l) {
//           add_marker(l.latitude,l.longitude,l.name);
//         });
// // centers map using first object lat and long
//       center_map(results.data[0].latitude,results.data[0].longitude);
// // instagram sometimes returns errors, this makes the alert aware;
//     }).error(function(results) {
//         alert(results);
//       });
//   };
// });

// // declares map and canvas variables, makes them globally available
// var map;
// var canvas;

// // centers map on first JSON object result
// var center_map = function (lat,long) {
//  var position = new google.maps.LatLng(lat, long);
//  map.setCenter(position);
// };
//   // creates map using googlemaps method syntax
// var display_map = function (lat, long, zoom) {
//   canvas = $('#map_canvas')[0];
//   // changes map_canvas from jquery to string for google api to work with
//   if (!canvas)
//     return;

// // options for map format
//   var mapOptions = {
//     center: new google.maps.LatLng(lat, long),
//     zoom: zoom,
//     mapTypeId: google.maps.MapTypeId.ROADMAP
//   };
//   map = new google.maps.Map(canvas, mapOptions);

//   var styles = [
//     {
//       stylers: [
//         { hue: "#00ffe6" },
//         { saturation: -20 }
//       ]
//     },{
//       featureType: "road",
//       elementType: "geometry",
//       stylers: [
//         { lightness: 100 },
//         { visibility: "simplified" }
//       ]
//     },{
//       featureType: "road",
//       elementType: "labels",
//       stylers: [
//         { visibility: "off" }
//       ]
//     },{
//       featureType: "road",
//       elementType: "geometry.fill",
//       stylers: [
//         { invert_lightness: true },
//         { gamma: 1 },
//         { visibility: "simplified" },
//         { weight: 1.2 }
//       ]
//     },{
//       featureType: "water",
//       elementType: "geometry.fill",
//       stylers: [
//         { inverse_lightness: false },
//         { gamma: 1 },
//         { visibility: "simplified" },
//         { weight: 1.2 }
//       ]
//     }
//   ]
//   map.setOptions({styles: styles});
// };

// // append marker to map
// var add_marker = function (lat, long, title) {
//   var latlng = new google.maps.LatLng(lat, long);
//   // var marker = new google.maps.Marker({position: latlng, map: map, title: title});
//     var marker = new google.maps.Marker({position: latlng, map: map, title: title, icon: '/assets/instagram-shadow.png'});
// };

// $(document).ready(function () {
//   // displays map with sydney cbd as location upon document loading
//   display_map(-33.89336, 151.217167, 15);

//   $('#buttonz').click(function(){
//     $('#popup').modal({
//   keyboard: false
//       });
//     // HELP: cant get this to work with bootstrap
//   });
// });