Rails.application.routes.draw do
  get "products/show"
  get "home/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # other routes

  resources :products


  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

# Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
# get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
# get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

# Defines the root path route ("/")
# root "posts#index"

# Root index
Rails.application.routes.draw do
  get "products/show"
  root "home#index"
  end
end
