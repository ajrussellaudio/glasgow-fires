ActiveAdmin.register Fire do
  permit_params :date, :cause, :deaths, :injuries, :aftermath, :building_id

  index do
    selectable_column
    column :building
    column :date
    column :cause
    column :deaths
    column :injuries
    column :aftermath
    actions
  end
end
