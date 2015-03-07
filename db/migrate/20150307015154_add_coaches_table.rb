class AddCoachesTable < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.integer :coach_id
      t.integer :team_id
      t.integer :league_id
      t.string :name
      t.integer :user_id
    end
  end
end
