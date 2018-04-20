json.extract! game, :id, :name, :min_players, :max_players, :age, :playing_time, :category, :description, :image, :created_at, :updated_at
json.url game_url(game, format: :json)
