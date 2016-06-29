ActiveAdmin.register Flow , namespace: :root do

config.per_page = 10

menu label: "流水记录" , parent: "流水"

permit_params :date, :value , :note, :mtype, :fcat1_id, :fcat2_id

  index do
    selectable_column

    id_column
    column :date
    column :fcat1
    column :fcat2 
    column :mtype
    column :value
    column :note
    actions
  end

  form do |f|
    f.inputs "流水详情" do
      f.input :date
      f.input :fcat1, as: :select
      f.input :fcat2, as: :select
      f.input :mtype , as: :select, collection: ["支出","收入","转账"]
      f.input :value
      f.input :note
    end
    f.actions
  end

end
