ActiveAdmin.register Fire do
  permit_params :date, :cause, :deaths, :injuries, :aftermath, :building_id
end
