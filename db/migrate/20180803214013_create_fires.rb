class CreateFires < ActiveRecord::Migration[5.2]
  def change
    create_table :fires do |t|
      t.string :building_name
      t.string :street_address
      t.float :latitude
      t.float :longitude
      t.datetime :date

      t.timestamps
    end
  end
end
