class RemoveManagerTable < ActiveRecord::Migration
  def change
    drop_table :managers
  end
end
