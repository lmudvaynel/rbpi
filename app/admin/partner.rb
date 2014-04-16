# encoding: utf-8
ActiveAdmin.register Partner do

 menu :priority => 2
 config.batch_actions = false
 config.sort_order = 'position_asc'
 sortable

  index do
    sortable_handle_column
    column :link
    column "Image" do |dc|
      image_tag dc.image.url(:thumb)
    end
    default_actions
  end

  form do |f|
    f.inputs do 
      f.input :link
      f.input :image, :as => :file, :hint => f.object.image.present? \
        ? image_tag(f.object.image.url(:thumb))
        : f.template.content_tag(:span, "Изображение отсутствует"), :required => false
    f.actions
    end
  end
end
