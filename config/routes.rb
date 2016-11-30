Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users

  resources :subs, only: [:index, :new, :create, :show] do
    resources :posts, only: [:index, :new, :create]
  end

  resources :posts, only: [:show] do
    resources :comments, only: [:create]
  end

  resources :sessions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'subs#index'

end
