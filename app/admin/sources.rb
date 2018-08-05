ActiveAdmin.register Source do
  permit_params :url, :headline, :publication, :fire_id

  index do
    selectable_column
    column :fire do |source|
      link_to "#{source.fire.building.name}, #{source.fire.date}", "/admin/fires/#{source.fire.id}"
    end
    column :headline
    column :publication do |source|
      link_to source.publication, source.url
    end
    actions
  end
end
