class Conversation < ApplicationRecord
  has_many :user_conversations
  has_many :bots, through: :bot_conversations
  has_many :users, through: :user_conversations
  has_many :messages, dependent: :destroy

end
