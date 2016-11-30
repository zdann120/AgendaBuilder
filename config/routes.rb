Rails.application.routes.draw do
  get 'slots/create'
  resources :events do
    resources :slots, only: [:create] do
      get 'guests/new', to: 'reservations#guest_new'
      post 'guests/create', to: 'reservations#guest_create'
    end
    resources :reservations, only: [:create]
  end
  get '/calendar', to: 'visitors#calendar'
  root to: 'visitors#index'
  devise_for :users
end
