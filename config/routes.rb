Rails.application.routes.draw do
  devise_for :cookers
  devise_for :users
  root to: 'pages#home'

  resources :searches, only: [ :create ]
  resources :meals, only: [ :index, :show ]
  # resources :users, only: [ :index ] do
  #   resources :searches, only: [ :create ]
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
