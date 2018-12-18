class SongsController < ApplicationController


def index
@songs = Song.all
end

def show
@song = Song.find(params[:id])
# @song_artist = Song.find(params[:id]).artist.name
# @song_genre = Song.find(params[:id]).genre.name
end

def new
@song = Song.new
end

def create
@song = Song.create(song_params)
redirect_to @song
end

def edit
@song = Song.find(params[:id])
end

def update
@song = Song.find(params[:id])
@song.update(song_params)	
redirect_to @song
end

def delete
@song = Song.find(params[:id])
@song.destroy

redirect_to song_index_path
end

private 

# def find_song
# @song = Song.find(params[:id])
# end

private
 
def song_params
  params.require(:song).permit(:name)
end
end #of class definition

