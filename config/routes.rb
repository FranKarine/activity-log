Rails.application.routes.draw do
<<<<<<< HEAD
  root to: 'logs#new'
=======
  root to: 'dashboard#index'
>>>>>>> 90fc6bb03e09fd04505562c5c1ed2cf10111c49b

  devise_for :users

  resources :activities
  resources :careplans, only: [:index, :new, :create, :destroy]
  resources :clients
  resources :logs
  resources :users
end

