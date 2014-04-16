# Encoding: utf-8
ActiveAdmin.register Page do
  menu :priority => 1
  config.batch_actions = false
  config.sort_order = 'position_asc'

  sortable

  controller do
    def new
      @page = Page.new
      @page.build_seo   # без этой строки не появляется форма для seo параметров
    end

    def edit
      @page = Page.find(params[:id])
      if @page.seo_id.nil?
        @page.build_seo
      end
    end
  end

  index do
    sortable_handle_column
    column :id
    column :position, :sortable => :position
    column :name
    column :slug
    column :parent
    default_actions
  end

  form partial: 'form'
end