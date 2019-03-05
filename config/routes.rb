Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Flat resources
  resources :flats, only: [:index, :new, :create, :show]
  resources :bookings, only: [:index, :new, :create]
  resources :reviews, only: [:index, :edit, :new, :create]
end
