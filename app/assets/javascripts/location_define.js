$(document).ready(function () {
    // displays map with GEOCODEip setting location upon document loading
    display_map(geoip_latitude(), geoip_longitude(), 18);
});

// declares map and canvas variables, makes them globally available
var map;
var canvas;

// creates map using googlemaps method syntax
var display_map = function (lat, long, zoom) {
    canvas = $('#map_canvass')[0];
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

    //autocomplete of search text field
    var input = document.getElementById('addresses');
    var options = {
        types: ['geocode'],
    };
    autocomplete = new google.maps.places.Autocomplete(input, options);

var styles = [{
    stylers: [{
        hue: "#EFAE1B"
    }, {
        saturation: -10
    }]

    }, {
    featureType: "road",
    elementType: "geometry",
    stylers: [{
        lightness: 100
    }, {
        visibility: "simplified"
    }]

    }, {
    featureType: "road",
    elementType: "labels",
    stylers: [{
        visibility: "on"
    }]

    }, {
    featureType: "road",
    elementType: "geometry.fill",
    stylers: [{
        invert_lightness: true
    }, {
        gamma: 1
    }, {
        color: "#381B07"
    }, {
        visibility: "simplified"
    }, {
        weight: 1.5
    }]

    }, {
    featureType: "water",
    elementType: "geometry",
    stylers: [{
        color: "#4099FF"
    }, {
        gamma: 1
    }, {
        visibility: "simplified"
    }, {
        weight: 1
    }]

}]

map.setOptions({
    styles: styles
});
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

        // user clicks on marker, it listens for id and runs inforender function
    });
    marker_list.push(marker); // pushes the marker data into empty array marker_list
    marker.setValues({
        id: id
    });
    console.log('marker for', title, 'id', id);
    // Event handler for marker clicking/listening
    google.maps.event.addListener(marker, 'click', function (event) {
        inforender(marker)
    });
};

// centers map on first JSON object result
var center_map = function (lat, long) {
    var position = new google.maps.LatLng(lat, long);
    map.setCenter(position);
};