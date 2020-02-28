(function() {
    App.cable.subscriptions.create({
      channel: "ChatChannel",
      room: "Best Room"
    });

  }).call(this);