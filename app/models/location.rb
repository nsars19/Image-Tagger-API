class Location < ApplicationRecord
  belongs_to :level
  belongs_to :character
end
