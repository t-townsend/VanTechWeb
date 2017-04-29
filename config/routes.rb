Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :organizations, only: [:show, :create, :edit, :update]

  resources :events, only: [:index]

  resources :news, only: [:index]

  resources :managers, only: [:new, :create]

  resources :directory, only: [:index]

  root 'home#index'
end
