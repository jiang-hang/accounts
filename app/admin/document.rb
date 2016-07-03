ActiveAdmin.register Document do

menu label: "文档"

permit_params :name, :note, :date, :img

  index do
    selectable_column
    id_column
    column :name
    column :date
    column :note
    column :img do |u|
        if u.img
           link_to(image_tag(u.img.url(:thumb), :height => '50'), document_path(u))
        else
           :null
        end
    end
    actions
  end


  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :date, as: :datepicker
      f.input :note
      f.input :img, required: false, :as => :file, :hint => f.image_tag(f.object.img.url(:thumb))
    end
    f.actions
  end

  show do
    attributes_table do
        row :name
        row :date
        row :note
        row :img do |ad|
           image_tag ad.img.url
        end
    end
  end

end
