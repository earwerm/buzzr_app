// google.maps.visualRefresh = true; //Optional

// var respMap;

// function mymapini() {
//     var mapPos = new google.maps.LatLng(geoip_latitude(), geoip_longitude()); //Set the coordinates
//     var mapOpts = {
//     zoom: 18, //You can change this according your needs
//     disableDefaultUI: true, //Disabling UI Controls (Optional)
//     center: mapPos, //Center the map according coordinates
//     mapTypeId: google.maps.MapTypeId.ROADMAP
//     };

//     respMap = new google.maps.Map(document.getElementById('map_canvass'),
//       mapOpts);

//     var mapMarker = new google.maps.Marker({
//           position: mapPos,
//           map: respMap,
//           title: 'You can put any title'
//       });

//     //This centers automatically to the marker even if you resize your window
//     google.maps.event.addListener(respMap, 'idle', function() {
//     window.setTimeout(function() {
//       respMap.panTo(mapPos.getPosition());
//     }, 250);
//   });
// }

// google.maps.event.addDomListener(window, 'load', mymapini);

// // $("#modalOpen").click(function(){ //Use it like <a href="#" id="modalOpen"...
// //     $("#myModal").show(); //ID from the Modal <div id="myModal">...
//     google.maps.event.trigger(respMap, 'resize');
// });