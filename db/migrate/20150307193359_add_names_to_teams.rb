class AddNamesToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :coach_name, :string
    add_column :teams, :homefield, :string
  end
end
