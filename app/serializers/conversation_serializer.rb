class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :topic
  has_many :messages
end
