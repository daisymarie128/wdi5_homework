$(document).ready(function(){

  var add_color = function () {
    var color = $('#color').val();
    var $box = $('<div></div>');
    $box.addClass('box');
    $box.css('background-color', color);
    $box.prependTo('#colors'); // equivalant to $('#colors').prepend(box);
  };

  var set_color = function () {
    var $box = $(this);
    var color = $box.css('background-color');
    $('#selected').css('background-color', color);
    // alert('you picked ' + color)
  };

  var create_background = function () {
    var add_bg = $('#add_background').val();
    $('#canvas').css('background-image', 'url(' + add_bg + ')');

  }

  var clear_colors = function () {
    $('#colors').empty();
    $('#selected').css('background-color', 'white');
  };

  var paint = function () {
    var color = $('#selected').css('background-color');
    var $pixel = $(this);
    $pixel.css('background-color', color);
  }

  $('#add_color').on('click', add_color);
  $('#clear').on('click', clear_colors)
  $('#colors').on('click', '.box', set_color);  //delegation!
  $('#canvas').on('mouseleave', '.pixel', paint);  //delegation!
  $('#add_bg').on('click', create_background);

  var create_pixels = function () {
    // for (var i = 0; i < 1000; i++) {
    //   var $pixel = $('<div/>');
    //   $pixel.addClass('pixel');
    //   $pixel.appendTo('#canvas');
    var $canvas = $('#canvas');//cach this to prevent repeatedly queriong
    _(1000).times(function(){
      var $pixel = $('<div/>');
      $pixel.addClass('pixel');
      $pixel.appendTo($canvas);
    });
  };

  create_pixels();

});

