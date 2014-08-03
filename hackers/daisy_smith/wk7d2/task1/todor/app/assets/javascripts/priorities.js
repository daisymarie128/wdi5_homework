$(document).ready(function () {

  if (_.isUndefined(window.priorities)) {
    return;
  }

  //capture mouse events and log them to console
  // $('body').on('mousemove', function(event) {
  //   console.log(event.screenX, event.screenY);
  // });

  // old way to do it
  // var show_form = function () {
  //   $('form').show();
  //   $('#new_priority').hide();
  // };
  // $('#new_priority').on('click', show_form);

  // var hide_form = function (event) {
  //   event.preventDefault();
  //   $('form').hide();
  //   $('#new_priority').show();
  // };
  // $('#cancel_priority').on('click', hide_form);

  var toggle_form = function (event){
    event && event.preventDefault && event.preventDefault();

    $('form').fadeToggle(function () {;
    $('#new_priority').toggle();
  });
    $('form')[0].reset();
    $('add_priority').show();
    $('update_priority').hide();
    $('#name').focus();
    // $('#name').val('');
    // $('#color').val('');
    // $('#urgency').val('');

  };

  $('#new_priority').on('click', toggle_form);
  $('#cancel_priority').on('click', toggle_form);
  $('#priorities').on('submit', function (event){
      event.preventDefault();
      var priorityName = $('#name').val();
      var priorityColor = $('#color').val();
      var priorityUrgency = $('#urgency').val();
      var priority_id = $('#priority_id').val();

      console.log(priorityName, priorityColor, priorityUrgency);

      toggle_form();

      $.ajax({
        url: '/priorities',
        type: 'POST',
        dataType: 'json',
        data: {
          name: priorityName,
          color: priorityColor,
          urgency: priorityUrgency,
          id: priority_id
        },
        success: function (p) {
          //Remove this priority from the array if we already have it.
          priorities = _(priorities).reject(function (priority){
            p.id === priority.id;
          });
          //Add the new or updated priority to the array
          priorities.push(p);

          //show the all the priorities.
          render_priorities();
        }
      })
    });

  var edit_priority = function (event) {
    // shorter more unreadilbe code. check if both things in statement is true, then do that thing.
    // $('form').is(':hiddem') && toggle_form();
    if ($('form').is(':hidden')) {
      toggle_form();
    }

    $('#add_priority').hide();
    $('#update_priority').show();

    var $li = $(this).closest('li');
    var name = $li.find('.name').text();
    var color = $li.find('.color').text();
    var urgency = $li.find('.urgency').text();
    var priority_id = $li.find('priority_id').text();

    $('#name').val( name );
    $('#color').val( color );
    $('#urgency').val( urgency );
    $('#priority_id').val( priority_id );
  };

  $('#priority-list').on('click', '.priority', edit_priority);


  //creates the coloured boxes. applies the color from the color form picker (the hex value) to the div css
  var render_priority_boxes = function () {
    var $colors = $('.color');
    $colors.each(function (i, color){
      var $color = $(color);
      var hex = $color.text();
      var $box = $('<div/>');
      $box.addClass('priority');
      $box.css('background-color', hex);
      // $color.after($box);
      $color.closest('li').prepend($box);
    });
  };

  render_priority_boxes();

  var render_priority = function (p) {
  var $li = $('<li/>');
          var $span1 = $('<span/>');
          $span1.addClass('name');
          $span1.text(p.name);
          var $span2 = $('<span/>');
          $span2.addClass('invisible color');
          $span2.text(p.color);
          var $span3 = $('<span/>');
          $span3.addClass('invisible urgency');
          $span3.text(p.urgency);
          var $span4 = $('<span/>');
          $span4.addClass('priority_id invisible');
          $span4.text(p.id);
          var $box = $('<div/>');
          $box.addClass('priority');
          $box.css('background-color', p.color);
          $li.prepend($box);
          $li.append($span1);
          $li.append($span2);
          $li.append($span3);
          $li.append($span4);
          $li.prependTo('#priority-list');
        };

  var render_priorities = function () {
    $('#priority-list').empty();
    priorities = _(priorities).sortBy('urgency');
    // priorities = priorities.reverse();
    _(priorities).each(render_priority);
  };

  render_priorities();
});




