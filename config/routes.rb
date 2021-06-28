Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  post '/login', to: "regestraitions#create"
  get '/login', to: "regestraitions#new", as: "new_regestrations"
  get '/logout', to: "regestraitions#destroy"
  get '/about' , to: "pages#about"
  root to: "results#new"
  get '/' , to: "results#new", as: "new_result"
  get '/:string', to: "results#show", as: "result"
  post '/', to: "results#create"
end
