class SongsController < ApplicationController
  before_action :find_song, only: [:show]

    def index
      @songs = Song.all
      #implicit song render
    end

    def new
      #render empty form with class instance
      @song = Song.new
      render :new
    end

    def show
      @artist = Artist.find(@song.artist_id)
      @genre = Genre.find(@song.genre_id)
      render :show
    end

    def create
      @song = Song.create(songs_params)
      redirect_to song_path(@song)
    end

  #### private methods for this class only
    private
    def find_song
      @song = Song.all.find(params[:id])
    end

    def songs_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
