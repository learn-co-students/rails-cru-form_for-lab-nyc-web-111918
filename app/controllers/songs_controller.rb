class SongsController < ApplicationController
  def index
    @songs=Song.all
    render :index
  end

  def show
    @song=Song.find(params[:id])
    render :show
  end

  def new
    @song=Song.new
    render :new
  end

  def create
    @song=Song.create(params.require(:song).permit(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end

  def edit
    @song=Song.find(params[:id])
    render :edit
  end

  def update
    @song=Song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end
end
