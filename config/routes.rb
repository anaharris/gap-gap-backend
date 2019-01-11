Rails.application.routes.draw do
  resources :users, :bots, :conversations, :messages

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  # ActionCable
  mount ActionCable.server => '/cable'

end
