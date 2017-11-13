Rails.application.routes.draw do
  resources :products, only: [:index, :new, :create, :show]
  resources :carts, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  root to: 'products#index'
end
