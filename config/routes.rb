Rails.application.routes.draw do
  get 'users/new'

  root "static#show"
  resources :users, only: [:create]
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
end
