Rails.application.routes.draw do
  get '/chat', to: 'rooms#show'
  get '/join/:id', to: 'games#join'
  resources :games
  root to: "welcome#show"
  mount ActionCable.server => '/cable'
end
