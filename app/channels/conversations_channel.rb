class ConversationsChannel < ApplicationCable::Channel

  def subscribed
    channel_name = "conversations_channel_#{current_user.id}"
    puts "EVENT=subscribed; subscribed to #{channel_name}"
    stream_from channel_name
  end

  def unsubscribed
    channel_name = "conversations_channel_#{current_user.id}"
    puts "EVENT=unsubscribed; unsubscribed from #{channel_name}"
    # Any cleanup needed when channel is unsubscribed
  end

  def create(arg)
    Message.create(
      content: arg.fetch('content')
    )
  end

end
