Rails.application.routes.draw do
  devise_for :cookers
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [ :show, :edit, :update ] do
    resources :orders, only: [ :index ]
  end
  resources :searches, only: [ :create ]
  resources :cookers, only: [ :show, :edit, :update ] do
    resources :orders, only: [ :create ]
  end
  resources :meals, only: [ :index, :show ]

  namespace :cooker do
    resources :meals
    resources :orders, only: [ :index ]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
