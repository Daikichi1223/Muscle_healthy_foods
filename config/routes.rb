Rails.application.routes.draw do
  devise_for :shops
  devise_for :users
  root to: "meals#index"
  resources :users, only: [:index, :destroy]
end
