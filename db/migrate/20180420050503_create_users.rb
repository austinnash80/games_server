class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :player
      t.boolean :sherpa
      t.string :location
      t.string :available

      t.timestamps
    end
  end
end
