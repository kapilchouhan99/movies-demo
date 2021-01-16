class CreateMovieReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_reviews do |t|
      t.belongs_to :movie
      t.belongs_to :review

      t.timestamps
    end
  end
end
