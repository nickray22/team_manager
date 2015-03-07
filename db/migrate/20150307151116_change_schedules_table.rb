class ChangeSchedulesTable < ActiveRecord::Migration
  def change
    remove_column :schedules, :team_id
    add_column :schedules, :team_id, :integer
  end
end
