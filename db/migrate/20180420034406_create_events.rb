class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.date :date
      t.time :time
      t.string :location
      t.integer :user_id
      t.integer :sherpa_id
      t.integer :game_id

      t.timestamps
    end
  end
end
