class Admin::GenresController < ApplicationController
  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def create
    genre = Genre.new(genre_params)
    if genre.save
      redirect_to admin_genres_path, notice: 'genre was successfully created.'
    else
      render :index, notice: 'error! Please Try again.'
    end
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      redirect_to admin_genres_path, notice: 'You have updated user successfully.'
    else
      render :edit, notice: 'error! Please Try again.'
    end
  end


private

  def genre_params
    params.require(:genre).permit(:name)
  end

end
