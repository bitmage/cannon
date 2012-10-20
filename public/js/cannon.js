(function() {
  var channel, publish, subscription;

  channel = postal.channel({
    channel: 'chat',
    topic: 'message'
  });

  subscription = channel.subscribe(function(data, envelope) {
    console.log(data.text);
    return $('#display').append("<p>" + data.text + "</p>");
  });

  publish = function() {
    return channel.publish({
      text: $('#input-text').val()
    });
  };

  $(function() {
    $('#send').click(function() {
      return publish();
    });
    return $('#send').keypress(function(e) {
      if (e.which === 13) {
        e.preventDefault();
        return publish();
      }
    });
  });

}).call(this);
