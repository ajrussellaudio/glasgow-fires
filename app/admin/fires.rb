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

  form do |f|
    f.semantic_errors
    f.inputs do
      input :building_id, label: "Building", as: :select, collection: Building.all.map { |building| [building.name, building.id] }
      input :date,
        start_year: Date.today.year,
        end_year: Date.today.year - 30
      input :cause
      input :deaths
      input :injuries
      input :aftermath
    end
    f.actions
  end
end
