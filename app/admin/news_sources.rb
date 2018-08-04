ActiveAdmin.register NewsSource do
  permit_params :publication, :headline, :url

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :fire_id, label: "Fire", as: :select, collection: Fire.all.map { |fire| "#{fire.building_name}, #{fire.date.year}"}
      f.input :url
      f.input :headline
      f.input :publication
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
