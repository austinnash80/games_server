json.extract! event, :id, :date, :time, :location, :user_id, :sherpa_id, :game_id, :created_at, :updated_at
json.url event_url(event, format: :json)
