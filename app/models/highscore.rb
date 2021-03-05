class Highscore < ApplicationRecord
  belongs_to :level
  validates :time, 
    presence: true,
    format: {
      with: /[0-9]+\.[0-9]+/
    }
  validates :name,
    presence: true,
    format: { 
      without: /[\\\*\{\}\(\)\"]+/, 
      message: "Only letters or numbers"
    },
    length: { 
      minimum: 2, 
      maximum: 24 
    }

  def as_json(options={})
    super(only: [:name, :time])
  end
end
