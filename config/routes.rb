Rails.application.routes.draw do
  get 'slots/create'
  resources :events do
    resources :slots, only: [:create]
    resources :reservations, only: [:create]
  end
  get '/calendar', to: 'visitors#calendar'
  root to: 'visitors#index'
  devise_for :users
end
