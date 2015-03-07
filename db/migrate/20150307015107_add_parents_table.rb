class AddParentsTable < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :parent_id
      t.integer :player_id
      t.string :name
      t.integer :user_id
    end
  end
end
