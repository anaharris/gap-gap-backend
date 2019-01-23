class Bot < ApplicationRecord
  has_many :bot_conversations
  has_many :messages
  has_many :conversations, through: :bot_conversations
  validates :name, uniqueness: {case_sensitive: false}
  validates :trigger, :response, :name, presence: true
end
