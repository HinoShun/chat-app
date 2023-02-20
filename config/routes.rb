Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index" #仮ルーティング

  resources :users, only: [:edit,:update]

end
