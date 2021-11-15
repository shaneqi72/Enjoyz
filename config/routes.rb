Rails.application.routes.draw do
  resources :properties
  # post "/properties/new", to: "properties#create"
  devise_for :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
