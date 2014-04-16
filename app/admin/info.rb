# Encoding: utf-8
ActiveAdmin.register Info do
  menu :priority => 3
  config.batch_actions = false
  config.sort_order = 'position_asc'

  sortable
  
  index do
    sortable_handle_column
    column :name
    column :page_id do |dc|
      link_to Page.find(dc.page_id).name , admin_page_path(Page.find(dc.page_id).slug) if !dc.page_id.nil?
    end
    default_actions
  end

  form partial: 'form'
end
  
