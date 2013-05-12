$ ->
  $('.up a, .down a').on 'ajax:success', (event, data, status, xhr) ->
    $(event.currentTarget).next().html(data.count)