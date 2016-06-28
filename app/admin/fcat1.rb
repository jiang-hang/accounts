ActiveAdmin.register Fcat1 , namespace: :root do


menu parent: "流水", label: "流水大类"

permit_params :name
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
