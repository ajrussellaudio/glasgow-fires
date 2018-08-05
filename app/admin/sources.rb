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

  form do |f|
    f.semantic_errors
    f.inputs do
      input :fire_id, label: "Fire", as: :select, collection: Fire.all.map { |fire| "#{fire.building.name}, #{fire.date.iso8601}"}
      input :url
      input :headline
      input :publication
    end
    f.actions
  end
end
