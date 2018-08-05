class AddBuildingHistoryToFires < ActiveRecord::Migration[5.2]
  def change
    add_column :fires, :building_history, :text
  end
end
