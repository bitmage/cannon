channel = postal.channel { channel: 'chat', topic:'message' }

subscription = channel.subscribe (data, envelope) ->
  console.log data.text
  $('#display').append "<p>#{data.text}</p>"

publish = ->
  channel.publish {text: $('#input-text').val()}

$ ->
  $('#send').click ->
    publish()
  $('#send').keypress (e) ->
    if e.which == 13
      e.preventDefault()
      publish()
