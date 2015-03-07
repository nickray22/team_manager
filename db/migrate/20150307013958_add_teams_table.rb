class AddTeamsTable < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :team_id
      t.integer :manager_id
      t.integer :coach_id
      t.integer :parent_id
      t.integer :roster_id
      t.integer :league_id
      t.string :name
      t.string :sport
      t.text :schedule
    end
  end
end
