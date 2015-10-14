Rails.application.routes.draw do
  root "static#show"
  get "login", to: "sessions#new"
end
