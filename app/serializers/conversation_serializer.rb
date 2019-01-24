class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :topic
  has_many :messages
  has_many :users
  has_many :bots
end
