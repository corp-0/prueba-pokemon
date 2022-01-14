Rails.application.routes.draw do
  root 'index#index'
  get '/pokemon', to: 'pokemon#show'
end
