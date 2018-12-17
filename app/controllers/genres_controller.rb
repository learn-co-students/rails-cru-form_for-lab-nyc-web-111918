class GenresController < ApplicationController
  before_action :find_genre, only: [:show]

    def index
      @genres = Genre.all
      #implicit genre render
    end

    def new
      #render empty form with class instance
      @genre = Genre.new
      render :new
    end

    def show
      render :show
    end

    def create
      @genre = Genre.create(genres_params)
      redirect_to genre_path(@genre)
    end

  #### private methods for this class only
    private
    def find_genre
      @genre = Genre.all.find(params[:id])
    end

    def genres_params
      params.require(:genre).permit(:name)
    end
end
