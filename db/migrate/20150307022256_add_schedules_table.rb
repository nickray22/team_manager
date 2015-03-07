class AddSchedulesTable < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :team_id
      t.integer :schedule_id
      t.datetime :game_day
      t.datetime :practice
    end
  end
end
