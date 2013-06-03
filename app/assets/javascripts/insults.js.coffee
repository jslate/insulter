@renderInto = (template_name, target, data) ->
  template = Handlebars.compile($("##{template_name}").html())
  $("#{target}").append template(datum) for datum in data

$ ->

  $('#insults').on 'ajax:success', '.up a, .down a', (event, data, status, xhr) ->
    $(event.currentTarget).next().html(data.count)

  $('form').on 'ajax:success', (event, data) ->
    $(event.currentTarget).find('input[type="text"]').val('')
    template = Handlebars.compile($('#insult-template').html())
    $('#insults').append template(data.insult)
