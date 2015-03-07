class AddManagersTable < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.integer :manager_id
      t.integer :team_id
      t.string :name
      t.string :user_id
    end
  end
end
