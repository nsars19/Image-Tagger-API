class AddLevelRefToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :level, null: false, foreign_key: true
  end
end
