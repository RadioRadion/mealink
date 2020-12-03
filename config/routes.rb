Rails.application.routes.draw do
  devise_for :cookers
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [ :show, :edit, :update ]
  resources :searches, only: [ :create ]
  resources :cookers, only: [ :show, :edit, :update ] do
    resources :order_items, only: [ :create ]
    resources :orders, only: [ :index, :create ]
  end
  resources :meals, only: [ :index, :show ]

  namespace :cooker do
    resources :meals
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
