Rails.application.routes.draw do
  resources :product_types
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Ticket 1
  get "customers" => "customers#index"
  post "customers" => "customers#create"
  get "customers/:id" => "customers#show"
  patch "customers/:id" => "customers#update"
  put "customers/:id" => "customers#update"

  # Ticket 5
  get "product_types" => "product_types#index"
  post "product_types" => "product_types#create"
  get "product_types/:id" => "product_types#show"
  delete "product_types/:id" => "product_types#destroy"
  patch "product_types/:id" => "product_types#update"
  put "product_types/:id" => "product_types#update"

end

