Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'skills#index'

  resources :skills
  resources :projects, except: [:index]
  resources :users, only: [:show]

end
