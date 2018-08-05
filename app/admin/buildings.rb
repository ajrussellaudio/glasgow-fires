ActiveAdmin.register Building do
  permit_params :name, :address, :latitude, :longitude, :history, :wikipedia, :category

  index do
    selectable_column
    column :name
    column :address
    column :latitude
    column :longitude
    column :history
    column :wikipedia do |building|
      link_to "Link", building.wikipedia
    end
    column :category
    actions
  end
end
