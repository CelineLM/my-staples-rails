Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :staples, only: [:new, :create]
  resources :groups, only: [:create] do
    resources :grocery_lists, only: [:new, :create]
  end
  # get "group/new", to: "group#new", as: 'user_root'

  resources :grocery_lists, only: [:show] do
      resources :non_staples, only: [:create]
      resources :my_staples, only: [:index, :create]
  end
  resources :my_staples, only: [:update,:destroy]
  resources :non_staples, only: [:destroy]
end
