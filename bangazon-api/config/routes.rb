Rails.application.routes.draw do
  resources :employee_computers

  resources :employee_training_programs
  resources :training_programs
  resources :employees, only: [:index, :show, :update, :create]
  resources :departments
  resources :computers
  resources :order_products
  resources :orders
  resources :products
  resources :payment_types
  resources :product_types
  resources :customers, only: [:index, :show, :update, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

