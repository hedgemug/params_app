Rails.application.routes.draw do
  get '/query_params' => 'params_examples#query_params'
  get '/my_name' => 'params_examples#my_name_method'
  get '/guess_game' => 'params_examples#guess_game_method'

  get '/url_segment_params/:wildcard_variable' => 'params_examples#url_segment_params'
end
