class Character < ApplicationRecord
  has_many :locations
  has_many :levels, through: :locations
end
