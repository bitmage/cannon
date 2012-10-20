channel = postal.channel { channel: 'chat', topic:'message' }

subscription = channel.subscribe (data, envelope) ->
  console.log data
  $('#display').append data

$('#send').click ->
  console.log 'click'
  channel.publish {test: 'Hello!'}
