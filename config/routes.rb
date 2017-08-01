Rails.application.routes.draw do

  root to: 'users#index'
  resources :users
  resources :matches, except: [:edit, :update] do
    resources :games, only: [:create, :destroy]
  end
  resources :statistics

end
