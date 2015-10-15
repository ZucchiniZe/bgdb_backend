class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.integer :min_players
      t.integer :max_players
      t.integer :difficulty
      t.integer :length
      t.text :description
      t.string :genre
      t.text :mechanics

      t.timestamps null: false
    end
  end
end
