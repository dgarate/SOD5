ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :email, :superadmin_role, :supervisor_role, :user_role, :end_date, :company_id, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :provider, :uid
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :superadmin_role, :supervisor_role, :user_role, :end_date, :company_id, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :provider, :uid]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
