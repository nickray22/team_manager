class ChangeSchedulesTable < ActiveRecord::Migration
  def change
    change_column :schedules, :team_id, :integer
  end
end
