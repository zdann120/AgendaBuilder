Rails.application.routes.draw do
  resources :events
  get '/calendar', to: 'visitors#calendar'
  root to: 'visitors#index'
  devise_for :users
end
