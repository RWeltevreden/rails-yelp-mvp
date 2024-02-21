Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :restaurants
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"



  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  post "restaurants", to: "restaurants#create"
  patch "restaurants/:id", to: "restaurants#update"


  # get "restaurants/:id", to: "restaurants#show", as: :restaurant


  # GET "restaurants/38"



  # get "restaurants/:id/reviews/new"
  # POST "restaurants/38/reviews"
  # post "restaurants/:id/reviews", to:


  #  post "tasks", to: "tasks#create"
end
