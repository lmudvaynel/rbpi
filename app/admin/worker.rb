# encoding: utf-8
ActiveAdmin.register Worker do
  menu :priority => 0  
  config.batch_actions = false
  config.sort_order = 'position_asc'

  sortable
  
  index do
    sortable_handle_column
    column "Image" do |dc|
      image_tag dc.photo.url(:thumb)
    end
    column :fio
    column :post
    column :bio
    default_actions
  end

  form partial: 'form'
end
