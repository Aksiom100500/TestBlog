App.comments = App.cable.subscriptions.create "CommentsChannel",
  collection: -> $('#comments_wrap')
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('.comments').show()
    @collection().append(data['comment'])
