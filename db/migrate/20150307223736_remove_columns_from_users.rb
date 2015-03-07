class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :name
    remove_column :users, :gender
    remove_column :users, :age
  end
end
