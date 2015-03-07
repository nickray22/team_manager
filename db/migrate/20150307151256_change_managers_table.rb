class ChangeManagersTable < ActiveRecord::Migration
  def change
    change_column :managers, :user_id, :integer
  end
end
