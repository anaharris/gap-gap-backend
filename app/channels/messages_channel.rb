require 'byebug'
class MessagesChannel < ApplicationCable::Channel

  def subscribed
    channel_name = "convo-1:messages"
    puts "EVENT=subscribed; subscribed to #{channel_name}"
    #byebug
    stream_from channel_name
  end

  def receive(payload)
    puts 'received message'
    puts payload.inspect
    message = Message.create(
      conversation_id: payload['conversation_id'],
      content: payload['content'],
      user_id: current_user.id,
      user_name: current_user.name)
    if message.valid?
      ActionCable.server.broadcast("convo-1:messages", message)
    else
      puts "EVENT=error; #{message.errors.full_messages}"
    end

  end

end
