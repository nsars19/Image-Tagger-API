class Level < ApplicationRecord
  has_many :locations
  has_many :highscores
end
