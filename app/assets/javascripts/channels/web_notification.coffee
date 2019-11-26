App.web_notification = App.cable.subscriptions.create "WebNotificationChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#notification_wrap').html data['message']