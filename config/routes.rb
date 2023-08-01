Rails.application.routes.draw do
  devise_for :users

  get 'cards/show'
  resources :products
  root 'shops#index'
  resource :cards, only: [:show]

  get 'about_us', to: 'shops#about_us'

  get '/order_items/user_order_items', to: 'order_items#user_order_items', as: 'user_order_items'
  resources :order_items, except: %i[show index]

  resources :shops, only: %i[index show] do
    get 'about_us', on: :collection
    get 'contact_us', on: :collection
  end
end
