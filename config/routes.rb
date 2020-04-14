Rails.application.routes.draw do
  resources :games
  resources :game_users
  resources :white_cards
  resources :black_cards
  resources :rounds
  get 'welcome/index'
  devise_for :users
  get 'remove_player' => 'games#_delete_player'
  get 'add_player' => 'games#_add_player'
  get 'winner' => 'rounds#_winner'
  get 'select' => 'rounds#_select'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
end
