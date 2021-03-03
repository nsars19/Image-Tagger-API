class Level < ApplicationRecord
  has_many :characters
  has_many :locations, through: :characters
end
