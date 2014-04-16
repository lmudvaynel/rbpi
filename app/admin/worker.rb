# encoding: utf-8
ActiveAdmin.register Worker do
  menu :priority => 4
  config.batch_actions = false
  config.sort_order = 'position_asc'

  sortable
  
  controller do
    def new
      @worker = Worker.new
    end

    def edit
      @worker = Worker.find(params[:id])
    end
  end
  
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

  form do |f|
    ft = f.template # just a helper variable
    f.inputs do
      f.input :photo, :as => :file, :hint => f.object.photo.present? \
        ? image_tag(f.object.photo.url(:thumb))
        : f.template.content_tag(:span, "Изображение отсутствует") 
      f.input :gender, as: :select, collection: ["M","F"]  
    end
    f.form_buffers<< ft.content_tag(:div, class: "globalize-inputs globalize-content") do
      f.globalize_inputs :translations do |lf|
        lf.inputs do 
          lf.input :fio
          lf.input :post
          lf.input :bio
          lf.input :locale, :as => :hidden 
        end
      end
    end
    f.inputs do 
      f.has_many :worker_contacts do |h| 
        h.input :email
        h.input :phone
      end
    end
    f.actions
  end
  #form partial: 'form'
end
