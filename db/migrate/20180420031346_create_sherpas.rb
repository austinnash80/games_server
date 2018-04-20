class CreateSherpas < ActiveRecord::Migration[5.1]
  def change
    create_table :sherpas do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :location

      t.timestamps
    end
  end
end
