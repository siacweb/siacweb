ActiveAdmin.register GeneralInformation do
  config.comments = false

  filter :name

  index do
    column :id
    column :name
    column :main_image do |record|
      image_tag(record.main_image.url(:thumb))
    end
    default_actions
  end

  show do
    attributes_table do
      row :id
      row :description
      row :main_image do |record|
        image_tag(record.main_image.url(:thumb))
      end
    end
  end

  form :html => {:enctype => "multipart/form-data"} do |f|
    f.inputs I18n.t("activerecord.models.general_information"), :multipart => true do
      f.input :name
      f.input :description
      f.input :main_image
    end
    f.actions
  end

end