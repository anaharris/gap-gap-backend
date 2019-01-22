require 'byebug'
class MessagesChannel < ApplicationCable::Channel

  def subscribed
    # channel_name = params[conversation_id]
    channel_name = ':messages'
    puts "EVENT=subscribed; subscribed to #{channel_name}"
    stream_from channel_name
  end

  def receive(payload)
    puts 'received message'
    puts payload.inspect
    # if it's a message handle it like a messages
    # if it's a "status update" like "so-and-so is typing" broadcast that message
    message = Message.create(
      conversation_id: payload['conversation_id'],
      content: payload['content'],
      user_id: current_user.id,
      user_name: current_user.name)
    if message.valid?
      ActionCable.server.broadcast(':messages', message)
    else
      puts "EVENT=error; #{message.errors.full_messages}"
    end

  end

end
