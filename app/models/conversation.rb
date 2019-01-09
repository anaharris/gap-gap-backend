class Conversation < ApplicationRecord
  has_many :bots, through: :bot_conversation
  has_many :users, through: :user_conversation
  has_many :messages
end
