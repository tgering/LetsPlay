Rails.application.routes.draw do
  get '/chat', to: 'rooms#show'
  resources :games
  root to: "welcome#show"
  mount ActionCable.server => '/cable'
end
