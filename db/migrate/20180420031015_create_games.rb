class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :min_players
      t.integer :max_players
      t.integer :age
      t.integer :playing_time
      t.string :category
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
