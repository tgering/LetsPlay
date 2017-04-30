Rails.application.routes.draw do
  get 'rooms/show'

  resources :games
  root to: "rooms#show"

  mount ActionCable.server => '/cable'
end
