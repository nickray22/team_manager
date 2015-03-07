class Player < User
  has_many :teams, through: :roster
  has_many :parents
  has_many :managers
  has_many :coaches
end
