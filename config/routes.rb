Rails.application.routes.draw do
  get '/params_game_url' => 'game#game_action'
  get '/guess_query' => 'game#guess_query'

  get '/guess_number_show' => 'game#guess_show'
  post '/guess_number_send' => 'game#guess_send'
end
