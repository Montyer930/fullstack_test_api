Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  # Ruta del login (fuera del namespace)
  post "login", to: "api/sessions#create"

  # Rutas RESTful de products (fuera del namespace)
  resources :products, controller: 'api/products', only: [:index, :show, :create, :update, :destroy]
end
