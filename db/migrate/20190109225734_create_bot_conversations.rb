class CreateBotConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :bot_conversations do |t|
      t.integer :bot_id
      t.integer :conversation_id

      t.timestamps
    end
  end
end
