Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/tvs" => "televisions#index"
  post "/tvs" => "televisions#create"
  get "/tvs/:id" => "televisions#show"
  patch "/tvs/:id" => "televisions#update"
  delete "/tvs/:id" => "televisions#destroy"
end
