class AddColumnToPlayersTable < ActiveRecord::Migration
  def change
    add_column :players, :player_id, :integer
  end
end
