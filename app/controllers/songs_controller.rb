class SongsController < ApplicationController


def index
@songs = Song.all
end

def show
@song = Song.find(params[:id])
 @song_artist = @song.artist				
 @song_genre = @song.genre
end

def new
@song = Song.new
@artist = Artist.all
@genre = Genre.all
end

def create
@song = Song.create(song_params)
# @artist = Artist.all
# @genre = Genre.all

if @song.valid?
redirect_to @song
	
else
# 	# flash[:errors] = @song.errors.full_messages
	@errors = @song.errors.full_messages
	render :new
	end #end of if else statement 

end #end of def

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


 
def song_params
  params.require(:song).permit(:name, :artist_id, :genre_id)
end

end #of class definition

