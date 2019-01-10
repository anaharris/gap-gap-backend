Rails.application.routes.draw do
  resources :users
    post '/login', to: 'auth#create'
    get '/profile', to: 'users#profile'
  resources :bots
  resources :conversations
  resources :messages
  mount ActionCable.server => '/cable'

end
