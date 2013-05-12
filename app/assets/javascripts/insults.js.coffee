$ ->

  $.ajax
    method: 'get'
    url: '/insults'
    dataType: 'json'
    success: (data) ->
      for insult in data.insults
        $('#insults').append Mustache.to_html($('#insult-template').html(), insult)

  $('#insults').on 'ajax:success', '.up a, .down a', (event, data, status, xhr) ->
    $(event.currentTarget).next().html(data.count)

  $('form').on 'ajax:success', (event, data) ->
    $(event.currentTarget).find('input[type="text"]').val('')
    $('#insults').append Mustache.to_html($('#insult-template').html(), data.insult)