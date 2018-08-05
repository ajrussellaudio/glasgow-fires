class CreateFires < ActiveRecord::Migration[5.2]
  def change
    create_table :fires do |t|
      t.date :date
      t.string :cause, default: "Under investigation"
      t.integer :deaths, default: 0
      t.integer :injuries, default: 0
      t.text :aftermath
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
