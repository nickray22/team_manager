class AddSchedulesTable < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :team_id
      t.integer :schedule_id
      t.datetime
    end
  end
end
