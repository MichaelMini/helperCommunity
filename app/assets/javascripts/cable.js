// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the rails generate channel command.
//
//= require action_cable
//= require_self
//= require_tree ./channels

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer();
  App.event = App.cable.subscriptions.create("EventChannel", {

    connected: () => {
      console.log("connected??");
    },

    received: (data) => {
      if (App.map) {
        var event = JSON.parse(data.message);
        addEventToMap(App.map, event);
      }
    }
  });
}).call(this);
