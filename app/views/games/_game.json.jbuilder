json.extract! game, :id, :name, :round_id, :number_of_players, :created_at, :updated_at
json.url game_url(game, format: :json)
