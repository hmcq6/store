Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [:index, :new, :create, :show, :update]
  resources :carts, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  root to: 'products#index'
end
