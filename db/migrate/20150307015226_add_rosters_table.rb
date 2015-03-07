class AddRostersTable < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.integer :roster_id
      t.integer :team_id
      t.integer :player_id
      t.integer :manager_id
    end
  end
end
