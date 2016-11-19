Rails.application.routes.draw do
  resources :subs, only: [:new, :create, :show] do
    resources :posts, only: [:index, :new, :create, :show]
  end

  resources :posts, only: [:show] do
    resources :comments, only: [:create]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'posts#index'

end
