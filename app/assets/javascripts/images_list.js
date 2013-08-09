// renders the list of markers in 'images_list' div
// var marker_list = [];
var listrender = function(l){
  var locale = $('#addresses').val();
  console.log('listrender '+'locale: '+locale);
  $('#images_listrender').append('<li><a data-id="' + l.id + '" href="#">' + l.name + '</a></li>');
  // $('#thumbnail').attr('src', data[0].images.thumbnail.url);
  $('#search_results').text('buzzing hives of '+locale);
};

$(document).ready( function () {
  $('#images_listrender').on('click','a', function () {
    console.log('images_list clicked')
    var id = $(this).data('id')
    inforender({id: id});
    return false;
    });

  $('#images_list').on('click', function () {
    $('#images_list_modal').modal({
      keyboard: false
    });
  });
});


