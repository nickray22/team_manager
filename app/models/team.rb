class Team < ActiveRecord::Base
  has_many :players, through: :roster
  has_many :parents
  has_many :coaches
  has_many :managers
  belongs_to :league
  has_one :schedule
  has_many :users
end
