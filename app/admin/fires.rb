ActiveAdmin.register Fire do
  permit_params :building_name, :street_address, :latitude, :longitude, :date
end
