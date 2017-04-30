class ChangeGamesAttendeeToString < ActiveRecord::Migration[5.0]
  def change
    drop_table :games
    create_table :games do |t|
      t.string :sport
      t.datetime :date
      t.string :location
      t.string :creator
      t.string :attendees

      t.timestamps
    end
  end
end
