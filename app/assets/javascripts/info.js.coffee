$ ->
  if $('ul#info').length > 0
    $(window).on 'keypress', (event) ->
      console.debug arguments
      if event.which == 32
        $('li:visible').hide().next().show()
      else if event.which = 98
        $('li:visible').hide().prev().show()
