Rails.application.routes.draw do
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "customers" => "customers#index"
  post "customers" => "customers#create"
  get "customers/:id" => "customers#show"
  patch "customers/:id" => "customers#update"
  put "customers/:id" => "customers#update"
end

