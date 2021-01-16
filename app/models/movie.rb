class Movie < ApplicationRecord
  has_many :movie_reviews
  has_many :reviews, through: :movie_reviews
  
  has_many :movie_actors
  has_many :actors, through: :movie_actors
end
