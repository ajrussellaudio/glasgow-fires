class CreateNewsSources < ActiveRecord::Migration[5.2]
  def change
    create_table :news_sources do |t|
      t.string :publication
      t.string :headline
      t.string :url
      t.references :fire, foreign_key: true

      t.timestamps
    end
  end
end
