class MessageSerializer < ActiveModel::Serializer
  attributes :id, :conversation_id, :user_id, :bot_id, :user_name, :content, :avatar, :created_at

end
