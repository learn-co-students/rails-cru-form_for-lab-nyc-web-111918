require 'byebug'

class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def show
    @genre = @song.genre_id
    @artist = @song.artist_id
  end

  def new
    @song = Song.new
  end

  def create
    #byebug
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    find_song
  end

  def update
    find_song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
