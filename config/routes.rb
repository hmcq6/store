Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [:index, :new, :create, :show, :update]
  resources :carts, only: [:show] do
    member do
      get :checkout
    end
  end
  resources :order_items, only: [:create, :update, :destroy]

  root to: 'products#index'
end
