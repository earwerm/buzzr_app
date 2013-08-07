// $(document).ready(function(){
// });
var inforender = function (marker) {

  var id = marker.id;// Get the ID from marker
  console.log('The ID for this is really: '+id);

  $.ajax({
    url: '/photo/'+ id,
    datatype: 'json',
    type: 'GET'
  }).done(function (photo) {
    if(photo.data.length == 0){
  alert('Sorry, this photo has been marked private by the owner, try another marker!')
      return;
      };
    $('.modal img').attr('src', photo.data[0].images.low_resolution.url);
    $('.modal-footer p').text(photo.data[0].caption.text);
    $('.modal-title').text(photo.data[0].location.name);
    $('.modal').modal({
       keyboard: false
    });
  });

// $('#go').popover(delay: { show: 500, hide: 100 })
};