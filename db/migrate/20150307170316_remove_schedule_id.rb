class RemoveScheduleId < ActiveRecord::Migration
  def change
    remove_column :schedules, :schedule_id
  end
end
