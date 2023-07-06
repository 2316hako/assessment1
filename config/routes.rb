Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items do
    resources :likes, only: [:create, :destroy]
  end
  get '/saved_items', to: 'items#saved', as: 'saved_items'
end
