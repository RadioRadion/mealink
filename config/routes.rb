Rails.application.routes.draw do
  devise_for :cookers
  devise_for :users
  root to: 'pages#home'

  resources :searches, only: [ :create ]
  resources :cookers, only: [ :show ] do
    resources :order_items, only: [ :create ]
  end
  resources :meals, only: [ :index, :show ]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
