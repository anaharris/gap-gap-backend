class Bot < ApplicationRecord
  has_many :bot_conversations
  has_many :conversations, through: :bot_conversations

end
