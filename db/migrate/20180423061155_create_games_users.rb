class CreateGamesUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :games_users do |t|
      t.integer :games_id
      t.integer :user_id
    end
  end
end
