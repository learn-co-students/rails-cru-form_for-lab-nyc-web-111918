class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
    render :show
  end

  def new
    @artist = Artist.new
    render :new
  end

  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
    render :edit
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end



end
