module MoviesHelper
  def movie_actors(movie)
    movie.actors.pluck(:name).uniq.join(", ")
  end

  def movie_locations(movie)
    movie.actors.pluck(:location).uniq.join(", ")
  end

  def movie_country(movie)
    movie.actors.pluck(:country).uniq.join(", ")
  end

  def review(movie)
    arr = movie.reviews.pluck(:stars)
    arr.inject{ |sum, el| sum + el }.to_f / arr.size
  end
end
