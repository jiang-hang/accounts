ActiveAdmin.register_page "Dashboard" , namespace: :root do

  menu priority: 1, label: "概况"

  content title: "资产概况" do
    #div class: "blank_slate_container", id: "dashboard_default_message" do
    #  span class: "blank_slate" do
    #    span I18n.t("active_admin.dashboard_welcome.welcome")
    #    small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #  end
    #end

    panel "总资产" do
         Account.group(:date).sum(:value).each do |k, v|
	   li "#{k} -- #{v}" 
         end
    end

    panel "总资产--分类" do
         Account.group(:date).group(:name).sum(:value).each do |k, v|
	   li "#{k} -- #{v}" 
         end
    end

    panel "总支出" do
         Flow.where(mtype: "支出").group("strftime('%Y-%m',date)").sum(:value).each do |k, v|
	   li "#{k} -- #{v}" 
         end
    end
    
    panel "总收入" do
         Flow.where(mtype: "收入").group("strftime('%Y-%m',date)").sum(:value).each do |k, v|
	   li "#{k} -- #{v}" 
         end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
