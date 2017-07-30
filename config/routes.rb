Rails.application.routes.draw do
  root to: 'logs#new'

  devise_for :users

  resources :careplans, only: [:index, :new, :create, :destroy]
  resources :clients
  resources :logs
  resources :users
end

