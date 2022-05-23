Rails.application.routes.draw do
  resources :item_types
  resources :locations
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "items#index"

end
