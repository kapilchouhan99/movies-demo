require 'csv'
namespace :import_csv do
  task :import_movie_review => :environment do
    movie_path = File.join(File.dirname(__FILE__), %w[.. .. db data movies.csv])
    CSV.foreach(movie_path, headers: true, header_converters: :symbol) do |row|
      @movie = Movie.find_by(title: row[:movie])
      @movie = Movie.create!(
          title: row[:movie],
          description: row[:description],
          year: row[:year],
          director: row[:director],
          actor: row[:actor],
          location: row[:location],
          country: row[:country]
        ) if @movie.nil?
 
      @actor = @movie.actors.find_or_create_by(name: row[:actor], location: row[:filming_location], country: row[:country])
    end

    review_path = File.join(File.dirname(__FILE__), %w[.. .. db data reviews.csv])
    CSV.foreach(review_path, headers: true, header_converters: :symbol) do |row|
      @movie = Movie.find_by(title: row[:movie])
      @movie.reviews.find_or_create_by(stars: row[:stars], username: row[:user], review: row[:review])
    end
  end
end 