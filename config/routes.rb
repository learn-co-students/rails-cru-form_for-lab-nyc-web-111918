Rails.application.routes.draw do
  resources :genres
  resources :artists
  # resources :songs
  get '/songs', to:'songs#index', as: "song_index"
  get 'songs/new', to:'songs#new'
  post 'songs', to: 'songs#create'
  get 'songs/:id', to:'songs#show', as: "song"
  get 'songs/:id/edit', to:'songs#edit'
  patch 'songs/:id/', to: 'songs#update'
  get 'songs/:id/delete', to: 'songs#delete'


end
