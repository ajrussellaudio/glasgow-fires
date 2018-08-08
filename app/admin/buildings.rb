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
      link_to "Link", building.wikipedia if building.wikipedia
    end
    column :canmore do |building|
      link_to "Link", building.canmore if building.canmore
    end
    column :category
    actions
  end

  form do |f|
    f.semantic_errors
    f.inputs do
      input :name
      input :address
      input :category
      input :latitude
      input :longitude
      input :wikipedia
      input :canmore
      input :history
    end
    f.actions
  end
end
