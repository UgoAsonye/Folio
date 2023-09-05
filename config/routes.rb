Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #Users controller routes
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  #Uploads controller routes
  get "/uploads" => "uploads#index"
  post "/uploads" => "uploads#create"
  get "/uploads/:id" => "uploads#show"
  patch "/uploads/:id" => "uploads#update"
  delete "/uploads/:id" => "uploads#destroy"

  #Comments controller routes
  get "/comments" => "comments#index"
  post "/comments" => "comments#create"
  get "/comments/:id" => "comments#show"
  patch "/comments/:id" => "comments#update"
  delete "/comments/:id" => "comments#destroy"

  #Sessions controller route
  post "/sessions" => "sessions#create"
end
