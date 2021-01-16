class Review < ApplicationRecord
  has_many :movie_reviews
  has_many :movies, through: :movie_reviews
end
