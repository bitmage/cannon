channel = postal.channel { channel: 'chat', topic:'message' }

subscription = channel.subscribe (data, envelope) ->
  console.log data.text
  $('#display').append "<p>#{data.text}</p>"

$ ->
  $('#send').click ->
    channel.publish {text: $('#input-text').val()}
