Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index" #仮ルーティング
  resources :users, only: [:edit,:update]
  resources :rooms, only: [:new, :create]
end
