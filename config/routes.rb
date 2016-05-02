Rails.application.routes.draw do
  root 'application#index'
  resources :users  
  resources :rides
  resources :attractions
  resources :sessions, only: [:create]
  get "/signin", to: "sessions#new"
  delete "/signout", to: "sessions#destroy"



end