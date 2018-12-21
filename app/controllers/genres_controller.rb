class GenresController < ApplicationController
before_action :find_genre, only: [:show, :edit, :update, :delete]

def index
@genres = Genre.all
end

def show
# @genre = Genre.find(params[:id])
@songs = @genre.songs
 
end

def new 
@genre = Genre.new
end	

def create
@genre = Genre.create(genre_params)


	if @genre.valid?
	redirect_to @genre
	else
		@errors = @genre.errors.full_messages
		render :new
	end	
end

def edit
# @genre = Genre.find(params[:id])
end

def update
# @genre = Genre.find(params[:id])
@genre.update(genre_params)	
redirect_to @genre
end

def delete
# @genre = Genre.find(params[:id])
@genre.destroy

redirect_to genre_index_path
end

def least_artist
	@genres = Genre.all
	@least_artist = @genres.min_by{|g| g.artists.count}

	render :least
end

private 

def find_genre
@genre = Genre.find(params[:id])
end


 
def genre_params
  params.require(:genre).permit(:name)
end


end #of class definition


