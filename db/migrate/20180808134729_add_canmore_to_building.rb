class AddCanmoreToBuilding < ActiveRecord::Migration[5.2]
  def change
    add_column :buildings, :canmore, :string
  end
end
