require 'byebug'
class MessagesChannel < ApplicationCable::Channel

  def subscribed
    channel_name = "convo-1:messages"
    puts "EVENT=subscribed; subscribed to #{channel_name}"
    #byebug
    stream_from channel_name
  end

  def receive(payload)
    message = Message.create(
      conversation_id: payload['conversation_id'],
      content: payload['message'],
      user_id: current_user.id)
    if message.valid?
      ActionCable.server.broadcast('messages', message)
    else
      puts "EVENT=error; #{message.errors.full_messages}"
    end

  end

end
