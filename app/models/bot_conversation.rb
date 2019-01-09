class BotConversation < ApplicationRecord
  belongs_to :bot
  belongs_to :conversation
end
