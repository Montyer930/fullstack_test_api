Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    post "login", to: "sessions#create"
    resources :products
  end
end
