Rails.application.routes.draw do
  root to: "pens#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/pens/:id', to: 'pens#index'
get '/pens/:id', to: 'pens#show'
end