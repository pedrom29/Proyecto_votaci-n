ActiveAdmin.register User do

  

  form do |f|
    inputs 'Agregar un nuevo usuario' do
     
      input :email
      input :password
    end
    actions
   end

   filter :email, as: :select
   filter :name, as: :select

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  permit_params :email, :password
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
