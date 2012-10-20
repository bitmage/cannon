(function() {
  var channel, subscription;

  channel = postal.channel({
    channel: 'chat',
    topic: 'message'
  });

  subscription = channel.subscribe(function(data, envelope) {
    console.log(data.text);
    return $('#display').append("<p>" + data.text + "</p>");
  });

  $(function() {
    return $('#send').click(function() {
      return channel.publish({
        text: 'Hello!'
      });
    });
  });

}).call(this);
