json.extract! user, :id, :name, :email, :superadmin_role, :supervisor_role, :user_role, :end_date, :company_id, :created_at, :updated_at
json.url user_url(user, format: :json)
