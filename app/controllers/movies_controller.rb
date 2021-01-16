class MoviesController < ApplicationController

  def index
    @movies = if params[:search]
      Movie.joins(:actors).where("actors.name LIKE ?", "%#{params[:search]}%")
    else
      Movie.all
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
