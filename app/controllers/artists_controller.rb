class ArtistsController < ApplicationController
before_action :find_artist, only: [:show]

  def index
    @artists = Artist.all
    #implicit artist render
  end

  def new
    #render empty form with class instance
    @artist = Artist.new
    render :new
  end

  def show
    render :show
  end

  def create
    @artist = Artist.create(artists_params)
    redirect_to artist_path(@artist)
  end

#### private methods for this class only
  private
  def find_artist
    @artist = Artist.all.find(params[:id])
  end

  def artists_params
    params.require(:artist).permit(:name, :bio)
  end

end #end of class
