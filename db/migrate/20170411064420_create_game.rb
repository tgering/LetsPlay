class CreateGame < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :sport, null: false
      t.string :date, null: false
      t.text :description, null: false
      t.belongs_to :user, null: false, foreign_key: true
      t.timestamps null: false
    end

    add_index :games, [:user_id, :date]
  end
end
