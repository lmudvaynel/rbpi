# encoding: utf-8
ActiveAdmin.register Slider do

 menu :priority => 3
 config.batch_actions = false
 config.sort_order = 'position_asc'
 sortable

  index do
    sortable_handle_column
    column "Image" do |dc|
      image_tag dc.image.url(:thumb)
    end
    default_actions
  end

  form do |f|
    f.inputs do 
      f.input :image, :as => :file, :hint => f.object.image.present? \
        ? image_tag(f.object.image.url(:thumb))
        : f.template.content_tag(:span, "Изображение отсутствует")
    f.actions
    end
  end
end