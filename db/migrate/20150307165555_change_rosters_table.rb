class ChangeRostersTable < ActiveRecord::Migration
  def change
    remove_column :rosters, :roster_id
  end
end
