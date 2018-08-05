class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :history
      t.string :wikipedia
      t.integer :category, default: 0

      t.timestamps
    end
  end
end
