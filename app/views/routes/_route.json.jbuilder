json.extract! route, :id, :title, :coordinates, :route, :user_id, :created_at, :updated_at
json.url route_url(route, format: :json)
