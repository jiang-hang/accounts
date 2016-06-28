ActiveAdmin.register Fcat2, namespace: :root do

menu parent: "流水", label: "流水子类"

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
