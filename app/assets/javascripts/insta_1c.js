// renders the list of markers in listy div
var marker_list = [];
var listrender = function(l){
  console.log('listrender');
  $('#listy').append('<li><a data-id="' + l.id + '" href="#">' + l.name + '</a></li>');
};
$(document).ready( function () {
  $('#listy').on('click','a', function () {
    var id = $(this).data('id')
    inforender({id: id});
    return false;
    });
});