class Roster < ActiveRecord::Base
  has_many :users, through: :teams
  belongs_to :team
end
