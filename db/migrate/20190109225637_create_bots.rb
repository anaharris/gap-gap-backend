class CreateBots < ActiveRecord::Migration[5.2]
  def change
    create_table :bots do |t|
      t.string :name
      t.string :avatar
      t.string :trigger
      t.string :response

      t.timestamps
    end
  end
end
