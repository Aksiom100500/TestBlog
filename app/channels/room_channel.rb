class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'room_channel'
  end

  def unsubscribed
  end
  # def unsubscribed
  #   # Any cleanup needed when channel is unsubscribed
  # end
  #
  # def speak(data)
  #   message = Comment.create! content: 'test'
  #   ActionCable.server.broadcast(
  #       'room_channel',
  #       message: render_message(message)
  #   )
  # end
  #
  # private
  #
  # def render_message(message)
  #   ApplicationController.renderer.render(
  #       partial: 'messages/message',
  #       locals: { message: message }
  #   )
  # end
end
