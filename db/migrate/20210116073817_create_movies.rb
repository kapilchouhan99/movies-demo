class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :year
      t.string :director
      t.string :actor
      t.string :location
      t.string :country

      t.timestamps
    end
  end
end
