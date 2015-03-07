class Parent < User
  has_many :players
  belongs_to :team
end
