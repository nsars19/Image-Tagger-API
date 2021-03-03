class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.belongs_to :level
      t.belongs_to :character
      t.float :x_min
      t.float :x_max
      t.float :y_min
      t.float :y_max
      t.timestamps
    end
  end
end
