class AddBggidToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :bggid, :integer
  end
end
