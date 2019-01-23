Rails.application.routes.draw do
  resources :users
  resources :bots
  resources :conversations
  resources :messages
  resources :user_conversations
  resources :bot_conversations

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  # ActionCable
  mount ActionCable.server => '/cable'

end
