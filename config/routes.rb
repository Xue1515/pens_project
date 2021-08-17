Rails.application.routes.draw do
    root to: "pens#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pens, only: [:show, :index]
end
