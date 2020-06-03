class AddAddressDanceLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :dance_lessons, :address, :string
  end
end
