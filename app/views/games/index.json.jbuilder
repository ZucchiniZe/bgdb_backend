json.array!(@games) do |game|
  json.id game.id
  json.title game.title

  json.info do
    json.difficulty game.difficulty
    json.description game.description
    json.genre game.genre
    json.mechanics game.mechanics
  end

  json.players do
    json.min game.min_players
    json.max game.max_players
  end

  json.time do
    json.minutes game.avg_length_min
    json.hours game.avg_length_hour
  end
end
