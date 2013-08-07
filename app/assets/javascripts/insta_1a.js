var marker_list = [];

// var listrender = function (marker) {
// $.each(results.data, function (i, l)
//   // step1 Create new <li>
//   // step2 $('li').text(photo.data[0].location.name)
//   // step3 append item with link to marker
//   )};

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