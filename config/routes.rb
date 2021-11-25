Rails.application.routes.draw do
  root to: 'pages#index'
  devise_for :user
  resources :bookings, only: [:index, :new, :create, :destroy]
  get 'pages/about'
  # resources :pages
  post "/properties/:id/book", to: "bookings#create", as: "book_property"
  post "/properties/:id/approve", to: "bookings#approve", as: "approve_book_property"
  post "/properties/:id/deny", to: "bookings#deny", as: "deny_book_property"
  resources :properties
  # post "/properties/new", to: "properties#create"
  get "/my_properties", to: "properties#my_properties", as: "my_properties"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
