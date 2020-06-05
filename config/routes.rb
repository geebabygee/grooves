Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  # resources :pages, only: [:home, :profile]
  get '/profile', to: 'pages#profile'

  # get "user/dashboard", to: "users#dashboard"
  # root to: 'dance_lessons#index'
  resources :dance_lessons , only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [ :create ]
  end

end
