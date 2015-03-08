class AddPlayerInfoToRosters < ActiveRecord::Migration
  def change
    add_column :rosters, :player_name, :string
    add_column :rosters, :email, :string
    add_column :rosters, :position, :string
    add_column :rosters, :numbers, :integer
  end
end
