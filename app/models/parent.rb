class Parent < ActiveRecord::Base
  has_many :players
  belongs_to :team
end
