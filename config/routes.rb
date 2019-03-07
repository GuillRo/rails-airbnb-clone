Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Flat resources
  # resources :flats, only: [:index, :new, :create, :show, :destroy]
  # resources :bookings, only: [:index, :new, :create]
  # resources :reviews, only: [:index, :edit, :new, :create]

  resources :flats, only: [:index, :new, :create, :show, :destroy] do
    resources :reviews, only: [:index, :new,  :create]
    resources :bookings, only: [:index, :new, :create]
  end

  resources :profiles, only: [:show, :update, :create, :new, :edit]
  get "bookings/error", to: "bookings#error"
  get "reviews/error", to: "reviews#error"
  # devise_for :users
  # resources :users, except: [:show]
  # get 'user/show/:id', to: 'users#show', as: 'profil'
end
