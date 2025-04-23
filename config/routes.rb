Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # Ruta del login (fuera del namespace)
  post "login", to: "api/sessions#create"


  root to: proc { [200, {}, ['API funcionando 🚀']] }
  
 
  # Rutas RESTful de products (fuera del namespace)
  resources :products, controller: 'api/products', only: [:index, :show, :create, :update, :destroy]

  # 📦 Nuevas rutas de consulta para la base de datos manual
  get "productos/compania/:id", to: "api/data#productos_por_compania"
  get "usuarios/compania/:id", to: "api/data#usuarios_por_compania"
  get "companias/ciudad/:id", to: "api/data#companias_por_ciudad"

  # Rutas para crear productos y usuarios
  post "productos", to: "api/data#crear_producto"
  post "usuarios", to: "api/data#crear_usuario"

end
