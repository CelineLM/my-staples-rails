Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  root to: 'pages#home'

  resources :staples, only: [:new, :create]

  resources :grocery_lists, only: [:show] do
    resources :non_staples, only: [:create]
    resources :my_staples, only: [:index, :create]
  end
  resources :groups, only: [:show]
  resources :my_staples, only: [:update,:destroy]
  resources :non_staples, only: [:destroy]
end
