class AddPlayersTable < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :roster_id
      t.integer :user_id
    end
  end
end
