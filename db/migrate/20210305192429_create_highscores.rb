class CreateHighscores < ActiveRecord::Migration[6.1]
  def change
    create_table :highscores do |t|
      t.string :name
      t.float :time
      t.references :level, foreign_key: true
      
      t.timestamps
    end
  end
end
