ActiveAdmin.register Fund, namespace: :root do

menu label: "股票"

actions :update, :show , :destroy, :index, :edit

permit_params :name , :value , :share , :note , :date, :net

  member_action :withdraw do
      @acc = Fund.find(params[:id])
      val = params[:val].to_f
      if val
         @nn=Fund.new
         @nn.name = @acc.name
         @nn.date = @acc.date
         @nn.value = @acc.value - val 
         @nn.share = @acc.share - (val / @acc.net)
         @nn.net= @acc.net
	 @nn.save
         redirect_to  funds_path
      else
         redirect_to  funds_path(params[:id])
      end
  end
  
  member_action :deposite do
      @acc = Fund.find(params[:id])
      val = params[:val].to_f
      if val
         @nn=Fund.new
         @nn.name = @acc.name
         @nn.date = @acc.date
         @nn.value = @acc.value + val 
         @nn.share = @acc.share + (val / @acc.net)
         @nn.net= @acc.net
	 @nn.save
         redirect_to  funds_path
      else
         redirect_to  funds_path(params[:id])
      end
  end

  member_action :updatevalue do
      @acc = Fund.find(params[:id])
      val = params[:val].to_f
      if val
         @nn=Fund.new
         @nn.name = @acc.name
         @nn.date = Date.today
         @nn.value = val 
         @nn.share = @acc.share 
         @nn.net= val / @acc.share
	 @nn.save
         redirect_to  funds_path
      else
         redirect_to  funds_path(params[:id])
      end
  end

  index do
    selectable_column

    id_column
    column :name
    column :date
    column :value
    column :share
    column :net
    column :note
    actions
  end


  form do |f|
    f.inputs "股票账户" do
      f.input :name , as: :select , collection: ["普通账户","信用账户"]
      f.input :date
      f.input :value
      f.input :share
      f.input :net
      f.input :note
    end
    f.actions
  end

  show do
    attributes_table do
        row :name
        row :date
        row :value
        row :share
        row :net
        row :note
    end

    #只有最后一条记录之上才能做更新
    if fund == Fund.where({name: "信用账户"}).order(date: :desc).limit(1)[0] \
      or fund == Fund.where({name: "普通账户"}).order(date: :desc).limit(1)[0]

        form action: updatevalue_fund_path(params[:id]) do |f|
           f.label "当前市值" 
           f.input :val, :name=>:val
   
           f.button "更新"
        end 

        br

        form action: withdraw_fund_path(params[:id]) do |f|
           f.label "赎回金额" 
           f.input :val, :name=>:val
   
           f.button "赎回"
        end 

        br    

        form action: deposite_fund_path(params[:id]) do |f|
           f.label "购买金额" 
           f.input :val, :name=>:val
   
           f.button "购买"
        end
    end 

  end

end
