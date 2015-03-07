class AddPlayerFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :player_name, :string
    add_column :users, :players_mother_name, :string
    add_column :users, :players_father_name, :string
    add_column :users, :players_position, :string
    add_column :users, :players_birthday, :datetime
  end
end
