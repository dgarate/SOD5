json.extract! user_access, :id, :username, :responsibility, :created_at, :updated_at
json.url user_access_url(user_access, format: :json)
