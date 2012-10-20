channel = postal.channel { channel: 'chat', topic:'message' }

subscription = channel.subscribe (data, envelope) ->
  $('#display').append "<p>#{data.text}</p>"

publish = ->
  channel.publish {text: $('#input-text').val()}
  $('#input-text').val('')

$ ->
  $('#send').click ->
    publish()
  $(window).keypress (e) ->
    if e.which == 13
      publish()
      e.preventDefault()
