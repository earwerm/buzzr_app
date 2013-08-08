$(document).ready(function () {
    // upon clicking the button with #addresses id, initialize the locale variable with the addresses value, run draw_points function;//
    $('#address').click(function () {
        console.log('address clickhandler');
        alert('Getting info from Instagram, this may take a few seconds......');
        var locale = $('#addresses').val();
        console.log('locale='+locale);
        draw_points(locale);
    });

    // var input = document.getElementById('address');
    // var options = {
    //     types: ['geocode'],
    // };

    // autocomplete = new google.maps.places.Autocomplete(input, options);

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
            // instagram sometimes returns errors, this alert makes the user aware;
        }).error(function (results) {
            alert("error! instagram says:" + results);
        });
    };
});

 // renders the marker info in #map_canvas?
var inforender = function (marker) {
    var id = marker.id; // Get the ID from marker
    console.log('The ID for this is really: ' + id);
    $.ajax({
        url: '/photo/' + id,
        datatype: 'json',
        type: 'GET'
    }).done(function (photo) {
        if (photo.data.length == 0) {
            alert('Sorry, this photo has been marked private by the owner, try another marker!')
            return;
        };
        $('#images_list_modal').modal('hide')
        $('.modal img').attr('src', photo.data[0].images.low_resolution.url);
        $('.modal-footer p').text(photo.data[0].caption.text);
        $('.modal-title').text(photo.data[0].location.name);
        $('#image_result').modal({
            keyboard: false
        });
    });
};