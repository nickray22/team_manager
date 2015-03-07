class RemoveCoachTable < ActiveRecord::Migration
  def change
    drop_table :coaches
  end
end
