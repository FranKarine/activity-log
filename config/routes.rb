Rails.application.routes.draw do
  root to: 'dashboard#index'

  devise_for :users

  resources :activities
  resources :careplans, only: [:index, :new, :create, :destroy]
  resources :clients
  resources :logs
  resources :users
end

