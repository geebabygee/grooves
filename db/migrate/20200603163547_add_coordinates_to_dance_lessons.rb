class AddCoordinatesToDanceLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :dance_lessons, :latitude, :float
    add_column :dance_lessons, :longitude, :float
  end
end
