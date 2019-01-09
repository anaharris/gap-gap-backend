class Bot < ApplicationRecord
  has_many :conversations, through: :bot_conversation
  
end
