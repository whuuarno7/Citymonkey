class CreateRols < ActiveRecord::Migration
  def change
    create_table :rols do |t|
      t.string :name
      t.string :brand

      t.timestamps null: false
    end
  end
end
