class AddLeaguesTable < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.integer :league_id
      t.integer :team_id
      t.string :name
    end
  end
end
