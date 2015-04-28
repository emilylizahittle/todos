Rails.application.routes.draw do

  root to: 'todos#index'

  get '/todos', to: 'todos#index'

  post '/', to: 'todos#create'

  get '/authors', to: 'authors#index', as: "authors"

  get '/authors/:id', to: 'authors#show', as: "author"

  post '/authors', to: 'authors#create'

  delete "/authors/:id", to: "authors#destroy"
end

