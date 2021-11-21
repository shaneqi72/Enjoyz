Rails.application.routes.draw do
  root to: 'pages#index'
  get 'pages/about'
  resources :pages
  resources :bookings
  post "/properties/:id/book", to: "bookings#create", as: "book_property"
  resources :properties
  # post "/properties/new", to: "properties#create"
  devise_for :user
  get "/my_properties", to: "properties#my_properties"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
