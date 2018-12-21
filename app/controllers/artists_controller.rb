class ArtistsController < ApplicationController

def index
@artists = Artist.all
end

def show
@artist = Artist.find(params[:id])
 # @songs = @artist.songs.name
 # @genre = Genre.find(params[:id])
 
end

def new 
@artist = Artist.new
end	

def create
@artist = Artist.create(artist_params)

if @artist.valid?
redirect_to @artist

else
@errors = @artist.errors.full_messages
render :new
	end# end of if statement
end#end of method

def edit
@artist = Artist.find(params[:id])
end

def update
@artist = Artist.find(params[:id])
@artist.update(artist_params)	
redirect_to @artist
end

def delete
@artist = Artist.find(params[:id])
@artist.destroy

redirect_to artist_index_path
end

def most_prolific
@artists = Artist.all

@most_prolific = @artists.max_by {|a| a.songs.count}

render :prolific
end

private 

# def find_song
# @song = Song.find(params[:id])
# end


 
def artist_params
  params.require(:artist).permit(:name, :bio)
end


end
