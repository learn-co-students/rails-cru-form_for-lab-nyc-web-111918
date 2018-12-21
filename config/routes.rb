Rails.application.routes.draw do
  # resources :genres
  # resources :artists
  # resources :songs
  get '/songs', to:'songs#index', as: "song_index"
  get 'songs/new', to:'songs#new'
  post 'songs', to: 'songs#create'
  get 'songs/:id', to:'songs#show', as: "song"
  get 'songs/:id/edit', to:'songs#edit'
  patch 'songs/:id/', to: 'songs#update'
  get 'songs/:id/delete', to: 'songs#delete'


  get '/artists', to:'artists#index', as: "artist_index"
  get 'artists/most_prolific', to: 'artists#most_prolific'
  get 'artists/new', to:'artists#new'
  post 'artists', to: 'artists#create'
  get 'artists/:id', to:'artists#show', as: "artist"
  get 'artists/:id/edit', to:'artists#edit'
  patch 'artists/:id/', to: 'artists#update'
  get 'artists/:id/delete', to: 'artists#delete'
  


  get '/genres/least_artist', to: 'genre#least_artist'
  get '/genres', to:'genres#index', as: "genre_index"
  get 'genres/new', to:'genres#new'
  post 'genres', to: 'genres#create'
  get 'genres/:id', to:'genres#show', as: "genre"
  get 'genres/:id/edit', to:'genres#edit'
  patch 'genres/:id/', to: 'genres#update'
  get 'genres/:id/delete', to: 'genres#delete'


end
