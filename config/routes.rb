Rails.application.routes.draw do
  devise_for :users
  root to: "pens#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pens, except: :index do
    resources :bookings, only: [ :new, :create]
  end
end
