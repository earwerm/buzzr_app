// renders the list of markers in 'images_list' div
var marker_list = [];
var listrender = function(l){
  console.log('listrender');
  $('?').append('<li><a data-id="' + l.id + '" href="#">' + l.name + '</a></li>');
};
$(document).ready( function () {
  $('#images_result_item').on('click','a', function () {
    console.log('images_result_item clicked')
    var id = $(this).data('id')
    inforender({id: id});
    return false;
    });
});