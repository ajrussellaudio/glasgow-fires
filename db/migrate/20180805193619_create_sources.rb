class CreateSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
      t.string :url
      t.string :headline
      t.string :publication
      t.references :fire, foreign_key: true

      t.timestamps
    end
  end
end
