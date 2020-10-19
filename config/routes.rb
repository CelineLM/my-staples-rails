Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :my_staples, only: [:index, :create, :destroy]
  resources :staples, only: [:new, :create]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :grocery_lists, only: [:new, :create]
  end
  resources :grocery_lists, only: [:show] do
      resources :non_staples, only: [:create]
  end
  resources :non_staples, only: [:destroy]
end
