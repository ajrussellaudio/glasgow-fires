ActiveAdmin.register Building do
  permit_params :name, :address, :latitude, :longitude, :history, :wikipedia, :category
end
