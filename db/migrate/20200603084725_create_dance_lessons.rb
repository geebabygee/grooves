class CreateDanceLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :dance_lessons do |t|
      t.string :name
      t.string :description
      t.string :level

      t.timestamps
    end
  end
end
