Rails.application.routes.draw do
  root to: "results#new"

  get "/signup", to: "users#new", as: "signup"
  get "/users/:id", to: "users#show", as: "user"
  post "/signup", to: "users#create"

  post '/login', to: "regestraitions#create"
  get '/login', to: "regestraitions#new", as: "new_regestrations"
  get '/logout', to: "regestraitions#destroy"

  get '/about', to: "pages#about"

  get '/', to: "results#new", as: "new_result"
  get '/:string', to: "results#show", as: "result"
  post '/', to: "results#create"
end
