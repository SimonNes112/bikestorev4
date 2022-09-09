Rails.application.routes.draw do 
 resources :bikes
 resources :bike_brands
 resources :bike_types
 resources :bike_models
 resources :bike_photos
 
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
