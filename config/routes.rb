Rails.application.routes.draw do
  resources :products, only: [:index, :new]
  resources :carts, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  root to: 'products#index'
end
