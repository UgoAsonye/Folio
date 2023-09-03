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
end
