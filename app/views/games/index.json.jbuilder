json.array!(@games) do |game|
  json.extract! game, :id, :title, :min_players, :max_players, :difficulty, :avg_length_min, :avg_length_hour, :description, :genre, :mechanics
  json.url game_url(game, format: :json)
end
