class ChangeLeaguesTable < ActiveRecord::Migration
  def change
    remove_column :leagues, :league_id
  end
end
