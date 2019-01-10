Rails.application.routes.draw do
  resources :users
  resources :bots
  resources :conversations
  resources :messages
  mount ActionCable.server => '/cable'
end
