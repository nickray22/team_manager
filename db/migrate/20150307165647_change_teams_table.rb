class ChangeTeamsTable < ActiveRecord::Migration
  def change
    remove_column :teams, :team_id
  end
end
