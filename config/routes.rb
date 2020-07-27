Rails.application.routes.draw do
  resources :voisins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
post '/api/new', to: 'api#voisinage'
get '/api/listevoisins', to: 'api#listevoisins'
get '/api/listevoisinsfavoris', to: 'api#listevoisinsfavoris'
get '/api/detailsvoisins/:id', to: 'api#detailsvoisins'
end
