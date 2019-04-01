class MessagesChannel < ApplicationCable::Channel
  CHANNEL_NAME = 'messages'

  def subscribed
    puts "EVENT=subscribed; subscribed to #{CHANNEL_NAME}"
    stream_from CHANNEL_NAME
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
      user_name: current_user.name,
      avatar: current_user.avatar
    )
      if message.valid?
        ActionCable.server.broadcast(CHANNEL_NAME, message)
      else
        puts "EVENT=error; #{message.errors.full_messages}"
      end
      # find bots that are part of the given conversation and their triggers
      conversation = Conversation.includes(:bots).find(message.conversation_id)
      bots = conversation.bots
      # check if the message.content includes /<trigger>
      # find the bot with that trigger
      filtered_bots = bots.select{|b| message.content.starts_with?("/#{b.trigger}")}
      # broadcast the response
      filtered_bots.each do |bot|
        bot_message = Message.create(
          conversation_id: payload['conversation_id'],
          content: bot.response,
          bot_id: bot.id,
          user_name: bot.name,
          avatar: bot.avatar
        )
        if bot_message.valid?
          ActionCable.server.broadcast(CHANNEL_NAME, bot_message)
        else
          ActionCable.server.broadcast(CHANNEL_NAME, {content: "sorry, the bot couldn't respond", user_name: bot.name})
        end
      end
  end

end
