json.extract! user, :id, :name, :player, :sherpa, :location, :available, :created_at, :updated_at
json.url user_url(user, format: :json)
