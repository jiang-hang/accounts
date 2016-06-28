ActiveAdmin.register Account, namespace: :root do


  menu label: "资产"

permit_params :name , :sub , :date , :value , :note, :type


  index do
    selectable_column

    id_column
    column :name
    column :sub
    column :mtype
    column :value
    column :date
    column :note
    actions
  end

  form do |f|
    f.inputs "资产详情" do
      f.input :name , as: :select , collection: ["中国银行","工商银行","农业银行","股票基金","支付宝","其他"]
      f.input :sub , as: :select, collection: ["活期账户","定期账户","其他"]
      f.input :mtype , as: :select, collection: ["资产","负债"]
      f.input :value
      f.input :date
      f.input :note
    end
    f.actions
  end


end
