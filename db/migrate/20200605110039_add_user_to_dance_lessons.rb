class AddUserToDanceLessons < ActiveRecord::Migration[6.0]
  def change
    add_reference :dance_lessons, :user,foreign_key: true
  end
end
