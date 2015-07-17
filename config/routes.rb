Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'users#index'

  resources :skills
  resources :projects, except: [:index]
  resources :users, only: [:show, :index]
  resources :posts do
    resources :comments
  end
  resources :references

end
