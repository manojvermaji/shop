Rails.application.routes.draw do
  devise_for :users
  
  get 'cards/show'
  resources :products
  root 'shops#index'
  # root 'products#index'
  resources :shops, only:[:index, :show]
  resources :order_items
  resource :cards, only:[:show]
  # resources :order_items, only: [:index, :create, :update, :destroy]

end
