$(document).ready(function (){
  var search_flickr = function () {
    var query = $('#search').val();
    console.log('searching for', query);

    var page = 1;

    var process_images = function (data) {
      var images = data.photos.photo;
      console.log('hello');

      for (var i = 0; i < images.length; i++){
        var item = images[i];
        console.log(item);
        var img_url = "http://farm"+ item.farm +".static.flickr.com/"+ item.server +"/"+ item.id +"_"+ item.secret +"_m.jpg";
        var $img = $('<img>');
        $img.attr('src', img_url);
        $('#images').append($img);
      }
    };

    $.getJSON('https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=2fb22a99659a0ffe54c5c8f29bce0641&text=' + query + '&per_page=30&page=' + page + '&format=json&jsoncallback=?', process_images);

  };

  var clear_images = function () {
    $('#images').empty();
  };

  $('#search_flickr').on('click', search_flickr);
  $('#clear_images').on('click', clear_images);
});